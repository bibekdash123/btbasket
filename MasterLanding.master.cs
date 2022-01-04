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
using System.Collections.Generic;
using System.Web.Services;
using System.Web.Script.Services;

public partial class MyBazarUser_MyBazar : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
        else
        {
           
        }
        
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["GROC"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Product_Name from Product_Master where " + "Product_Name like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["Product_Name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }
    protected void lnkareaserviced_Click(object sender, EventArgs e)
    {
    }
    protected void lnkcustomerservice_Click(object sender, EventArgs e)
    {
    }
    protected void LnkShow_Click(object sender, EventArgs e)
    {
        PanelRegister.Visible = true;
        PanelLogin.Visible = false;
    }
    protected void Lnkregis_Click(object sender, EventArgs e)
    {
        PanelRegister.Visible = false;
        PanelLogin.Visible = true;
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
            Lbllogmsg.Visible = true;
            TxtMobile.Text = "";
            TxtPassword.Text = "";
            TxtMobile.Focus();
            TxtMobile.BorderColor = System.Drawing.Color.Red;
        }
        else
        {

            Lbllogmsg.Visible = false;
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
       // Login();
    }
    public void Register()
    {
        string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "SHA1");
        Object usersignup = new Object();
        usersignup.Mobile = TxtPhone.Text;
        usersignup.Password = encryp;
        usersignup.Email = TxtEmail.Text;
        usersignup.Name = TxtUname.Text;
        usersignup.Address = Hiddenaddress.Value;
        usersignup.Pincode = int.Parse(Hiddenpin.Value);
        BSLAYER.signupuser(usersignup);
        Session["Name"] = TxtUname.Text;
        Session["Mail"] = TxtEmail.Text;
        Session["Mobile"] = TxtPhone.Text;
        Session["Address"] = Hiddenaddress.Value;
        Session["Pin"] = int.Parse(Hiddenpin.Value);

    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if ((TxtPhone.Text == "") && (TxtPwd.Text == ""))
        {
            TxtPhone.BorderColor = System.Drawing.Color.Red;
            TxtPwd.BorderColor = System.Drawing.Color.Red;

        }
        else
        {
            Register();
            Response.Redirect("account");
        }
    }
    public void checkmobile()
    {
        Object MobileDuplicate = new Object();
        MobileDuplicate.Mobile = TxtPhone.Text;
        DataTable dt = BSLAYER.DuplicateMobile(MobileDuplicate);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            Panelmsg.Visible = false;
            Txtotp.Visible = true;

            generateotp();
            SendOtpSms();
            //Btnotp.Enabled = false;
            if (Btnotp.Text == "Resend")
            {
                Btnotp.Visible = false;
            }
            else
            {
                Btnotp.Text = "Resend";
            }            
            Btnverify.Visible = true;
            Response.AddHeader("Refresh", "5");
        }
        else
        {
            Panelmsg.Visible = true;
            Txtotp.Visible = false;
            TxtPhone.Text = "";
            TxtPhone.BorderColor = System.Drawing.Color.Red;
            Btnotp.Enabled = true;
        }
    }
    public void generateotp()
    {
        Random r = new Random();
        string OTP = r.Next(1000, 9999).ToString();
        Hiddenotp.Value = OTP.ToString();
        //Label1.Text = OTP.ToString();
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
            string _smsMsg = Hiddenotp.Value + " is your BTBASKET verifiation code.OTP is valid for 180 seconds only,don't share OTP with anyone.\n\nRegards\nBTBASKET";
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

    protected void Btnotp_Click(object sender, EventArgs e)
    {
        if (TxtPhone.Text == "")
        {
            TxtPhone.Focus();
            TxtPhone.BorderColor = System.Drawing.Color.Red;
        }
        else
        {
            checkmobile();
        }

        //Btnotp.Enabled = false;
        //Btnverify.Visible = true;
    }
    protected void Btnverify_Click(object sender, EventArgs e)
    {


        if (Txtotp.Text == Hiddenotp.Value)
        {
            TxtPwd.Visible = true;
            TxtEmail.Visible = true;
            TxtUname.Visible = true;
            Txtotp.Visible = false;
            Btnotp.Visible = false;
            Btnverify.Visible = false;
            BtnRegister.Visible = true;
        }
        else
        {
            TxtPwd.Visible = false;
            TxtEmail.Visible = false;
            TxtUname.Visible = false;
            Txtotp.Visible = true;
            BtnRegister.Visible = false;
        }

    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["Search"] = TxtSearch.Text;
        Response.Redirect("search-item");
        //Response.Redirect("product?N=" + Session["Search"] + " ");
    }

}
