using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Web.Services;
using System.Web.Script.Services;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string SendSMS(string _user, string _password, string _mobileNumber, string _message, string _senderName, string _templateId, string _headerId)
    {
        string stringpost = "userid=" + _user + "&pwd=" + _password + "&route=2&senderid=" + _senderName + "&destination=" + _mobileNumber + "&message=" + _message + "&PE_ID=1201160829939959678&Template_ID=" + _templateId + "&Header_ID=" + _headerId;
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
    protected void b1_Click(object sender, EventArgs e)
    {
        try
        {
            string _smsMsg = "6598 is your BTBASKET verifiation code.OTP is valid for 180 seconds only,don't share OTP with anyone." + Environment.NewLine.ToString() + Environment.NewLine.ToString() + "Regards" + Environment.NewLine.ToString() + "BTBASKET";
            string _receiver =t1.Text;
            string strPostResponse = "";
            string smsRecvStatus = "";
            strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT", "1207161881028569937", "1205160836437501893");
            smsRecvStatus = strPostResponse;
            TextBox1.Text = smsRecvStatus;
            TextBox1.Text += _smsMsg;

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}