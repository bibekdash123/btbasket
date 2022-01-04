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

public partial class MyBazarUser_ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void generateotp()
    {
        Random r = new Random();
        string OTP = r.Next(14211, 98542).ToString();
        Hiddenotp.Value = OTP.ToString();
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
    public void SendOtpSms()
    {
        try
        {
            string _smsMsg = "OTP for password recovery is " + Hiddenotp.Value + "\n\nRegards\nBTBASKET";
            string _receiver = Txtphone.Text;
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
    protected void Btnotp_Click(object sender, EventArgs e)
    {
        generateotp();
        SendOtpSms();
        Txtotp.Visible = true;
        Btnverify.Visible = true;
        Btnotp.Enabled = false;
        HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "300";
        this.Page.Controls.Add(meta);
    }
    protected void Btnverify_Click(object sender, EventArgs e)
    {
        if (Txtotp.Text == Hiddenotp.Value)
        {
            Hiddenotp.Value = "";
            Txtotp.Visible = false;
            TxtPwd.Visible = true;
            Btnotp.Visible = false;
            Btnverify.Visible = false;
            BtnUpdate.Visible = true;
        }
        else
        {
            
        } 
    }
    public void PasswordChange()
    {
        string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "SHA1");
        Object PasswordUpdate = new Object();
        PasswordUpdate.Mobile = Txtphone.Text;
        PasswordUpdate.Password = encryp;
        BSLAYER.UpdatePassword(PasswordUpdate);
        Txtotp.Visible = false;
        TxtPwd.Visible = false;
        Btnotp.Visible = false;
        Btnverify.Visible = false;
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        PasswordChange();
    }
}