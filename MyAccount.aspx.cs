using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Net.Mail;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text;
using iTextSharp.text.pdf;


public partial class MyBazarUser_MyAccount : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!Page.IsPostBack)
        {
            if (Session["Loggedin"] != null)
            {
                //HiddenMail.Value = Session["Mail"].ToString();
                //TxtName.Text = Session["Name"].ToString();
                //TxtMail.Text = Session["Mail"].ToString();
                TxtPhone.Text = Session["Mobile"].ToString();
                //TxtAddress.Text = Session["Address"].ToString();
                //TxtPin.Text = Session["Pin"].ToString();
                GetUserDetail();
            }
            else
            {
                Response.Redirect("home");
            }
            
        }
    }
    public void GetUserDetail()
    {
        Object UserDetailsView = new Object();
        UserDetailsView.Mobile = TxtPhone.Text;
        DataTable dt = BSLAYER.ViewUserDetails(UserDetailsView);
        TxtName.Text = dt.Rows[0]["Name"].ToString();
        TxtMail.Text = dt.Rows[0]["Email"].ToString();
        TxtAddress.Text = dt.Rows[0]["Address"].ToString();
        TxtPin.Text = dt.Rows[0]["Pincode"].ToString();
    }
    public void UpdateProfile()
    {
        Object ProfileUpdate = new Object();
        ProfileUpdate.Name = TxtName.Text;
        ProfileUpdate.Email = TxtMail.Text;
        ProfileUpdate.Address = TxtAddress.Text;
        ProfileUpdate.Pincode = int.Parse(TxtPin.Text);
        ProfileUpdate.Mobile = TxtPhone.Text;
        BSLAYER.UpdateProfile(ProfileUpdate);
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        UpdateProfile();
        BtnUpdate.Text = "PROFILE UPDATED..";
        BtnUpdate.Enabled = false;
        Response.Redirect("account");

    }
}