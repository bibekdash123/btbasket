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

public partial class MyBazarUser_User_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Login()
    {

        Object UserLogin = new Object();
        UserLogin.Mobile = TxtMobile.Text;
        UserLogin.Password = TxtPassword.Text;
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
    public void WelcomeMail()
    {
        MailMessage mail = new MailMessage();
        MailAddress from = new MailAddress("no-reply@btbasket.com");
        mail.From = from;
        mail.To.Add(new System.Net.Mail.MailAddress(TxtMail.Text));
        mail.Bcc.Add(new System.Net.Mail.MailAddress("info@btbasket.com"));

        mail.Subject = "WELCOME TO WORLD OF BTBASKET";
        mail.Body += "Congratulation-----" + TxtName.Text + " <br/><br/>";
        mail.Body += "We are glad to have you as our priority customer" + " <br/><br/>";

        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "relay-hosting.secureserver.net";
        smtp.Port = 25;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("no-reply@btbasket.com", "Amphi12356");
        smtp.EnableSsl = false;
        smtp.Send(mail);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Mail Sent To btbasket.com service dept');", true);
    }
    public string SendSMS(string _user, string _password, string _mobileNumber, string _message, string _senderID)
    {
        string stringpost = "userid=" + _user + "&pwd=" + _password + "&route=2&senderid=" + _senderID + "&destination=" + _mobileNumber + "&message=" + _message;
        HttpWebRequest objWebRequest = null;
        HttpWebResponse objWebResponse = null;
        StreamWriter objStreamWriter = null;
        StreamReader objStreamReader = null;
        try
        {
            string stringResult = null;
            objWebRequest = (HttpWebRequest)WebRequest.Create("http://sms.cheapsmsindia.in/composeapi/?" + stringpost);
            objWebRequest.Method = "POST";
            objWebRequest.ContentType = "application/x-www-form-urlencoded";

            objStreamWriter = new StreamWriter(objWebRequest.GetRequestStream());
            objStreamWriter.Write(stringpost);
            objStreamWriter.Flush();
            objStreamWriter.Close();
            objWebResponse = (HttpWebResponse)objWebRequest.GetResponse();
            objStreamReader = new StreamReader(objWebResponse.GetResponseStream());
            stringResult = objStreamReader.ReadLine();
            objStreamReader.Close();
            return (stringResult);
        }
        catch (Exception ex)
        {
            return (ex.Message);
        }
        finally
        {
            if ((objStreamWriter != null))
            {
                objStreamWriter.Close();
            }
            if ((objStreamReader != null))
            {
                objStreamReader.Close();
            }
            objWebRequest = null;
            objWebResponse = null;
        }
    }
    public void SendSms()
    {
        try
        {
            string _smsMsg = "Dear, " + TxtName.Text + " Thank you for registered with BTBASKET ";
            string _receiver = TxtPhone.Text;
            string strPostResponse = "";
            string smsRecvStatus = "";
            strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT");
            smsRecvStatus = strPostResponse;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
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
    public void Register()
    {
        Object usersignup = new Object();
        usersignup.Email = TxtMail.Text;
        usersignup.Name = TxtName.Text;
        usersignup.Mobile = TxtPhone.Text;
        usersignup.Address = TxtAddress.Text;
        usersignup.Password = TxtPwd.Text;
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
            WelcomeMail();
            SendSms();
            Response.Redirect("signup");
        }


    }
    protected void Btnpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("password-recovery");
    }
}