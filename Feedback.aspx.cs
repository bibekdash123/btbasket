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
using System.Net.Mail;

public partial class MyBazarUser_Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
        }
    }
    public void Contact()
    {
        Object contactuser = new Object();
        contactuser.Name = TxtName.Text;
        contactuser.Email = TxtMail.Text;
        contactuser.Mobile = TxtPhone.Text;
        contactuser.Query = TxtQuery.Text;
        contactuser.Created_Date = HiddenDate.Value;
        BSLAYER.usercontact(contactuser);
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        Contact();
        PanelAlert.Visible = true;
        TxtName.Text = "";
        TxtMail.Text = "";
        TxtPhone.Text = "";
        TxtQuery.Text = "";
    }
}