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
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class MyBazarUser_Place_Order : System.Web.UI.Page
{
    int Charges = 50;
    int Final;
    int Amnt;
    private int sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["OrderNo"] != null)
            {
                DataTable cartdata = (DataTable)Session["FillCart"];
                GridView1.DataSource = cartdata;
                GridView1.DataBind();
                //generatestring();
                HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
                HiddenTime.Value = DateTime.Now.ToShortTimeString();
                LblOrderid.Text = Session["OrderNo"].ToString();
                LblAmount.Text = Session["Total"].ToString();

                //Amnt = int.Parse(LblAmount.Text);
                //if (Amnt < 400)
                //{
                //    Final = Amnt + Charges;
                //    LblAmount.Text = Final.ToString();
                //    HiddenCharge.Value = "YES";
                //}
                //else
                //{
                //    LblAmount.Text = Session["Total"].ToString();
                //    HiddenCharge.Value = "NO";
                //}
            }
            else
            {
                Response.Redirect("pc");
            }

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
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        Register();
        SendSms();
        Session["OrderNo"] = LblOrderid.Text;
        Session["Total"] = LblAmount.Text; 
        Session["Name"] = TxtName.Text;
        Session["Mail"] = TxtMail.Text;
        Session["Mobile"] = TxtPhone.Text;
        Session["Address"] = TxtAddress.Text;
        Session["Pin"] = TxtPin.Text;
        Response.Redirect("transaction");
        
    }
    protected void TxtMail_TextChanged(object sender, EventArgs e)
    {
        //here we will check for duplicate email exist or not!//
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

    public void Login()
    {
        Object UserLogin = new Object();
        UserLogin.Mobile = TxtMobile.Text;
        UserLogin.Password = TxtPassword.Text;
        DataTable dt = BSLAYER.LoginUser(UserLogin);
        int r = dt.Rows.Count;
        if (r < 1)
        {
           // PanelAlert.Visible = true;
            TxtMobile.Text = "";
            TxtPassword.Text = "";
        }
        else
        {
            //PanelAlert.Visible = false;
            Session["OrderNo"] = LblOrderid.Text ;
            Session["Total"] = LblAmount.Text; 
            Session["Name"] = dt.Rows[0]["Name"].ToString();
            Session["Mail"] = dt.Rows[0]["Email"].ToString();
            Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
            Session["Address"] = dt.Rows[0]["Address"].ToString();
            Session["Pin"] = dt.Rows[0]["Pincode"].ToString();
            Response.Redirect("transaction");
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {  
        Login(); 
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
            e.Row.CssClass = "header";
        if (e.Row.RowType == DataControlRowType.DataRow &&
                  e.Row.RowState == DataControlRowState.Normal)
            e.Row.CssClass = "normal";
        if (e.Row.RowType == DataControlRowType.DataRow &&
                  e.Row.RowState == DataControlRowState.Alternate)
            e.Row.CssClass = "table";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblTotamt = (Label)e.Row.FindControl("lblTotal");
            TextBox txtcost = (TextBox)e.Row.FindControl("TxtPrice");
            int cost = Convert.ToInt16(txtcost.Text);
            TextBox txtquantity = (TextBox)e.Row.FindControl("TxtQuantity");

            int quant = Convert.ToInt16(txtquantity.Text);
            int tot = cost * quant;
            TextBox txttot = (TextBox)e.Row.FindControl("TxtTotal");
            txttot.Text = tot.ToString();

           
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            

        }
    }
    
}