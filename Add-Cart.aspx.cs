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

public partial class MyBazarUser_Add_Cart : System.Web.UI.Page
{
    private int sum = 0;
    int Charges = 30;
    int Final;
    int Amnt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
            HiddenTime.Value = DateTime.Now.ToShortTimeString();
            getproductdetail();
            UpdateTotal();
        }
        else
        {
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
            HiddenTime.Value = DateTime.Now.ToShortTimeString();
        }

    }
    public void getproductdetail()
    {

        if (Session["FillCart"] != null)
        {
            DataTable cartdata = (DataTable)Session["FillCart"];
            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView1.DataSource = cartdata;
            GridView1.DataBind();
            Session["Time"] = DateTime.Now.ToShortTimeString();
        }
        else
        {
            LblMessage.Visible = true;
            LblMessage.Text = "Your Cart Is Currently Empty";
        }
    }
    public void generateorderid()
    {
        string chars = "012345";
        char[] CharsString = new char[5];
        Random random = new Random();
        for (int i = 0; i < CharsString.Length; i++)
        {
            CharsString[i] = chars[random.Next(chars.Length)];
        }
        string Result = new String(CharsString);
        LblOdId.Text = LblCode.Text + Result;
    }
    public void generatetran()
    {
        string chars = "1234560";
        char[] CharsString = new char[5];
        Random random = new Random();
        for (int i = 0; i < CharsString.Length; i++)
        {
            CharsString[i] = chars[random.Next(chars.Length)];
        }
        string Result = new String(CharsString);
        LblTranNumber.Text = HiddenCode.Value + Result;
    }
    public void PlaceOrderUser()
    {
        Object orderinsert = new Object();
        orderinsert.Order_Id = LblOdId.Text;
        orderinsert.Amount = PurchaseAmnt.Value;
        orderinsert.Name = Session["Name"].ToString();
        orderinsert.Email = Session["Mail"].ToString();
        orderinsert.Mobile = Session["Mobile"].ToString();
        orderinsert.Address = Session["Address"].ToString();
        orderinsert.Pincode = int.Parse(Session["Pin"].ToString());
        orderinsert.Order_Date = HiddenDate.Value;
        orderinsert.Order_Time = HiddenTime.Value;
        BSLAYER.insertorder(orderinsert);
    }
    protected void BtnSelect_Click(object sender, EventArgs e)
    {

        GridView1.Visible = false;
        panelcartlist.Visible = false;
        int Fix = Convert.ToInt32(FixAmnt.Value);
        int Purchase = Convert.ToInt32(PurchaseAmnt.Value);
        if (Purchase < Fix)
        {

            PanelAlert.Visible = true;
            BtnSelect.Visible = false;
            BtnUpdate.Visible = false;

        }

        else if (Session["loggedin"] != null)
        {

            generateorderid();
            Session["OrderNo"] = LblOdId.Text;
            Session["Total"] = PurchaseAmnt.Value;
            panelorder.Visible = false;
            BtnSelect.Visible = false;
            BtnUpdate.Visible = false;
            panelcartlist.Enabled = false;
            Response.Redirect("transaction");
        }
        else
        {

            generateorderid();
            Session["OrderNo"] = LblOdId.Text;
            Session["Total"] = PurchaseAmnt.Value;
            panelorder.Visible = true;
            BtnSelect.Visible = false;
            BtnUpdate.Visible = false;
            panelcartlist.Enabled = false;
        }
    }
    

    protected void calculatesum()
    {
        Label l2 = (Label)GridView1.FooterRow.FindControl("Lblsubtotal");
        l2.Text = sum.ToString();
    }
    public void GetTotalGrossAmt()
    {

        decimal GrossAmt = 0;
        foreach (GridViewRow grv in GridView1.Rows)
        {
            TextBox lblTotAmtt = (TextBox)grv.FindControl("TxtTotal");
            GrossAmt += lblTotAmtt.Text == "" ? 0 : Convert.ToInt32(lblTotAmtt.Text.ToString());
        }

        Label3.Text = GrossAmt.ToString();
        Label3.Focus();
        PurchaseAmnt.Value = Label3.Text;
        LblGrandTot.Text = Label3.Text;
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("home");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridViewRow grv = (GridViewRow)(((LinkButton)sender).NamingContainer);
        DataTable dt1 = new DataTable();
        dt1 = (DataTable)Session["FillCart"];
        dt1.Rows.RemoveAt(grv.RowIndex);
        Session["count"] = Convert.ToInt32(Session["count"]) - 1;
        Session["FillCart"] = dt1;
        GridView1.DataSource = null;
        GridView1.DataBind();
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        /*
        //Session["count"] = Convert.ToInt32(Session["count"]) - 1;
        if (dt1.Rows.Count < 1)
        {
            LblGrandTot.Text = "0";
            LblGrossTotal.Text = "0";
            Label3.Text = "0";
            panelsummary.Visible = false;
            panelcartlist.Visible = false;
            lblempty.Visible = true;
            Lnkshop.Visible = true;
        }
        else
        {
            panelsummary.Visible = true;
            panelcartlist.Visible = true;
            lblempty.Visible = false;
            Lnkshop.Visible = false;
        }
        */
        Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
    }
    protected void Lnkshop_Click(object sender, EventArgs e)
    {
        Response.Redirect("home");
    }
    protected void Btnalert_Click(object sender, EventArgs e)
    {
        if (Session["loggedin"] != null)
        {
            Amnt = int.Parse(LblGrandTot.Text);
            if (Amnt < 500)
            {
                Final = Amnt + Charges;
                LblGrossTotal.Text = Final.ToString();
                LblGrossTotal.Visible = true;

                LblGrossTotal.Text = "PAYBLE AMOUNT :" + Final.ToString();
                PurchaseAmnt.Value = Final.ToString();
                Session["Total"] = PurchaseAmnt.Value;
                panelcartlist.Enabled = false;
            }
            else
            {
                LblGrandTot.Text = Session["Total"].ToString();
                Session["Total"] = LblGrandTot.Text;
                panelcartlist.Enabled = false;
            }
            generateorderid();
            Session["OrderNo"] = LblOdId.Text;
            
            panelorder.Visible = true;
            BtnSelect.Visible = false;
            BtnUpdate.Visible = false;
            PanelAlert.Visible = false;
            panelorder.Visible = false;
            Response.Redirect("transaction");
        }
        else
        {
            Amnt = int.Parse(LblGrandTot.Text);
            if (Amnt < 500)
            {
                Final = Amnt + Charges;
                LblGrossTotal.Visible = true;
                Lblcharges.Visible = true;
                LblGrossTotal.Text = "PAYBLE AMOUNT :" + Final.ToString();
                PurchaseAmnt.Value = Final.ToString();
                panelcartlist.Enabled = false;
                panelorder.Visible = true;

            }
            else
            {
                LblGrandTot.Text = Session["Total"].ToString();
                LblGrossTotal.Visible = false;
                Lblcharges.Visible = false;
                panelorder.Visible = true;

            }
            generateorderid();
            Session["OrderNo"] = LblOdId.Text;
            Session["Total"] = PurchaseAmnt.Value;
            BtnSelect.Visible = false;
            BtnUpdate.Visible = false;
            PanelAlert.Visible = false;
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        PanelAlert.Visible = false;
        panelcartlist.Enabled = true;
        BtnSelect.Visible = false;
        BtnUpdate.Visible = true;

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
            Session["OrderNo"] = LblOdId.Text;
            Session["Total"] = PurchaseAmnt.Value;
            Session["Name"] = dt.Rows[0]["Name"].ToString();
            Session["Mail"] = dt.Rows[0]["Email"].ToString();
            Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
            Session["Address"] = dt.Rows[0]["Address"].ToString();
            Session["Pin"] = dt.Rows[0]["Pincode"].ToString();
            Response.Redirect("transaction");
            generatetran();
            //BtnOrder.Visible = true;
            TxtMobile.Visible = false;
            TxtPassword.Visible = false;
            BtnLogin.Visible = false;
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        Login();
    }
    public void Register()
    {
        string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "SHA1");
        Object usersignup = new Object();
        usersignup.Mobile = TxtPhone.Text;
        usersignup.Password = encryp;
        usersignup.Email = TxtMail.Text;
        usersignup.Name = TxtName.Text;
        usersignup.Address = Hiddenaddress.Value;
        usersignup.Pincode = int.Parse(Hiddenpin.Value);
        BSLAYER.signupuser(usersignup);
        Session["Mobile"] = TxtPhone.Text;
        Session["Name"] = Hiddenname.Value;
        Session["Mail"] = TxtMail.Text;
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
            generatetran();
            Response.Redirect("transaction");
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //up.Update();
    }
    public void checkmobile()
    {
        Object MobileDuplicate = new Object();
        MobileDuplicate.Mobile = TxtPhone.Text;
        DataTable dt = BSLAYER.DuplicateMobile(MobileDuplicate);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            Panel1.Visible = false;
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
            Lblmsg.Text = "OTP Will Expire In 5 Minutes";
            //Response.AddHeader("Refresh", "5");
        }
        else
        {
            Panel1.Visible = true;
            Txtotp.Visible = false;
            TxtPhone.Text = "";
            TxtPhone.BorderColor = System.Drawing.Color.Red;
            Btnotp.Enabled = true;
        }
    }
    public void generateotp()
    {
        Random r = new Random();
        string OTP = r.Next(1089, 9988).ToString();
        Hiddenotp.Value = OTP.ToString();
        //Label1.Text = OTP.ToString();
    }
    //public string SendSMS(string _user, string _password, string _mobileNumber, string _message, string _senderID)
    //{
    //    string stringpost = "userid=" + _user + "&pwd=" + _password + "&route=2&senderid=" + _senderID + "&destination=" + _mobileNumber + "&message=" + _message;
    //    HttpWebRequest objWebRequest = null;
    //    HttpWebResponse objWebResponse = null;
    //    StreamWriter objStreamWriter = null;
    //    StreamReader objStreamReader = null;
    //    try
    //    {
    //        string stringResult = null;
    //        objWebRequest = (HttpWebRequest)WebRequest.Create("http://sms.cheapsmsindia.in/composeapi/?" + stringpost);
    //        objWebRequest.Method = "POST";
    //        objWebRequest.ContentType = "application/x-www-form-urlencoded";

    //        objStreamWriter = new StreamWriter(objWebRequest.GetRequestStream());
    //        objStreamWriter.Write(stringpost);
    //        objStreamWriter.Flush();
    //        objStreamWriter.Close();
    //        objWebResponse = (HttpWebResponse)objWebRequest.GetResponse();
    //        objStreamReader = new StreamReader(objWebResponse.GetResponseStream());
    //        stringResult = objStreamReader.ReadLine();
    //        objStreamReader.Close();
    //        return (stringResult);
    //    }
    //    catch (Exception ex)
    //    {
    //        return (ex.Message);
    //    }
    //    finally
    //    {
    //        if ((objStreamWriter != null))
    //        {
    //            objStreamWriter.Close();
    //        }
    //        if ((objStreamReader != null))
    //        {
    //            objStreamReader.Close();
    //        }
    //        objWebRequest = null;
    //        objWebResponse = null;
    //    }
    //}
    //public void SendOtpSms()
    //{
    //    try
    //    {
    //        string _smsMsg = Hiddenotp.Value + " is your BTBASKET verifiation code.OTP is valid for 180 seconds only,don't share OTP with anyone.\n\nRegards\nBTBASKET";
    //        string _receiver = TxtPhone.Text;
    //        string strPostResponse = "";
    //        string smsRecvStatus = "";
    //        strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT");
    //        smsRecvStatus = strPostResponse;
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //    }
    //}
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
    public void SendOtpSms()
    {
        try
        {
            string _smsMsg = Hiddenotp.Value + " is your BTBASKET verifiation code.OTP is valid for 180 seconds only,don't share OTP with anyone.\n\nRegards\nBTBASKET";
            string _receiver = TxtPhone.Text;
            string strPostResponse = "";
            string smsRecvStatus = "";
            strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT", "1207161881028569937", "1205160836437501893");
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
    }
    protected void Btnverify_Click(object sender, EventArgs e)
    {
        if (Txtotp.Text == Hiddenotp.Value)
        {
            TxtPwd.Visible = true;
            TxtMail.Visible = true;
            Txtotp.Visible = false;
            TxtName.Visible = true;
            Btnotp.Visible = false;
            Btnverify.Visible = false;
            Lblmsg.Text = "";
            BtnRegister.Visible = true;
        }
        else
        {
            TxtPwd.Visible = false;
            BtnRegister.Visible = false;
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowIndex];
            TextBox TxtQuant = (TextBox)(row.FindControl("TxtQuantity"));
            int UpdateQuantity = Convert.ToInt16(TxtQuant.Text);

            DataTable dtCart = (DataTable)Session["FillCart"];
            dtCart.Rows[rowIndex]["Product_Unit"] = UpdateQuantity.ToString();

            Session["FillCart"] = dtCart;

            
            GridView1.DataSource = null;
            GridView1.DataBind();

            GridView1.DataSource = dtCart;
            GridView1.DataBind();

            Int32 UnitPrice = Convert.ToInt32(((TextBox)row.FindControl("TxtPrice")).Text);
            ((TextBox)row.FindControl("TxtTotal")).Text = (UpdateQuantity * UnitPrice).ToString();

            if (dtCart.Rows.Count < 1)
            {
                LblGrandTot.Text = "0";
                LblGrossTotal.Text = "0";
                Label3.Text = "0";
                panelsummary.Visible = false;
                panelcartlist.Visible = false;
                lblempty.Visible = true;
                Lnkshop.Visible = true;
            }
            else
            {
                panelsummary.Visible = true;
                panelcartlist.Visible = true;
                lblempty.Visible = false;
                Lnkshop.Visible = false;
            }

            Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }
    }
    protected void UpdateTotal()
    {
        try
        {
            sum = 0;
            foreach (GridViewRow gvrProdcut in GridView1.Rows)
            {
                Int32 UnitPrice = Convert.ToInt32(((TextBox)gvrProdcut.FindControl("TxtPrice")).Text);
                Int32 Quantity = Convert.ToInt32(((TextBox)gvrProdcut.FindControl("TxtQuantity")).Text);
               
                sum += (UnitPrice * Quantity);
            }
            Label3.Text = sum.ToString();
            LblGrandTot.Text = Label3.Text;
            PurchaseAmnt.Value = sum.ToString();
        }
        catch (Exception ex)
        {

        }
    }
}
