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
using System.Net;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            
        }
    }
    public void Login()
    {
        string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPassword.Text, "SHA1");
        Object UserLogin = new Object();
        UserLogin.Mobile = TxtMobile.Text;
        UserLogin.Password = encryp;
        DataTable dt = BSLAYER.LoginUser(UserLogin);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            TxtMobile.Text = "";
            TxtPassword.Text = "";
        }
        else
        {
            Session["Loggedin"] = "1";
            Session["Name"] = dt.Rows[0]["Name"].ToString();
            Session["Mail"] = dt.Rows[0]["Email"].ToString();
            Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
            Session["Address"] = dt.Rows[0]["Address"].ToString();
            Session["Pin"] = dt.Rows[0]["Pincode"].ToString();
            Response.Redirect("account");
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if ((TxtMobile.Text == "") && (TxtPassword.Text == ""))
        {
            TxtMobile.BorderColor = System.Drawing.Color.Red;
            TxtPassword.BorderColor = System.Drawing.Color.Red;
            TxtMobile.Focus();
        }
        else
        {
            Login();
        }

    }
    protected void Btnpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("password-recovery");
    }
    protected void TxtMail_TextChanged(object sender, EventArgs e)
    {
        Object UserDuplicate = new Object();
        UserDuplicate.Email = TxtMail.Text;
        DataTable dt = BSLAYER.DuplicateUser(UserDuplicate);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            TxtName.Focus();
        }
        else
        {
            TxtMail.Text = "";
            // PanelDuplicate.Visible = true;
        }
    }
    public void Register()
    {
        string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "SHA1");
        Object usersignup = new Object();
        usersignup.Email = TxtMail.Text;
        usersignup.Name = TxtName.Text;
        usersignup.Mobile = TxtPhone.Text;
        usersignup.Address = TxtAddress.Text;
        usersignup.Password = encryp;
        usersignup.Pincode = int.Parse(TxtPin.Text);
        BSLAYER.signupuser(usersignup);
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if ((TxtPhone.Text == "") && (TxtPwd.Text == "") && (TxtMail.Text == ""))
        {
            TxtPhone.BorderColor = System.Drawing.Color.Red;
            TxtPwd.BorderColor = System.Drawing.Color.Red;
            TxtMail.BorderColor = System.Drawing.Color.Red;
            TxtMail.Focus();
        }
        else
        {
            Register();
            //WelcomeMail();
            //SendSms();
            Response.Redirect("home");
        }


    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["Search"] = TextBox1.Text;
        Response.Redirect("search-item");
    }

}
