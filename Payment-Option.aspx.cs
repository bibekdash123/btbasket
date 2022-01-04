using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class MyBazarUser_Payment_Option : System.Web.UI.Page
{
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
                DeliveryTime();
                generatestring();
                DateTime utcTime = DateTime.UtcNow;
                TimeZoneInfo ISI = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
                DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, ISI);
                HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
                HiddenTime.Value = localTime.ToShortTimeString();
                HiddenYear.Value = DateTime.Now.Year.ToString();
                HiddenMonth.Value = DateTime.Now.ToString("MMMM");
                LblOrderid.Text = Session["OrderNo"].ToString();
                LblOrderNo.Text = Session["OrderNo"].ToString();
                LblAmount.Text = Session["Total"].ToString();
                TxtName.Text = Session["Name"].ToString();
                TxteMail.Text = Session["Mail"].ToString();
                TxtPhone.Text = Session["Mobile"].ToString();
                TxtAddress.Text = Session["Address"].ToString();
                TxtPin.Text = Session["Pin"].ToString();
                BtnOrder.Text = "Continue Purchase With  : RS/- " + Session["Total"].ToString();
                
                TxtShipPin.Text = TxtPin.Text;
                TxtShipAddress.Text = TxtAddress.Text;
                int amount = int.Parse(LblAmount.Text);
                if(amount < 400)
                {
                    HiddenCharge.Value = "YES";
                }
                else
                {
                    HiddenCharge.Value = "NO";
                }
                
            }
            else
            {
                Response.Redirect("pc");
            }
        }
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
    public void SendSms()
    {
        try
        {
            string _smsMsg = "Dear, " + TxtName.Text + " Your Order With Order ID : " + LblOrderid.Text + " Amounting : " + LblAmount.Text + " Has Been Received.You will receive the order soon.\n\nRegards\nBTBASKET";
            string _receiver = TxtPhone.Text;
            string strPostResponse = "";
            string smsRecvStatus = "";
            strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT", "1207163949477025881", "1205160836437501893");
            smsRecvStatus = strPostResponse;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void SendSmsAdmin()
    {
        try
        {
            string _smsMsg = "New Order Placed For - " + TxtName.Text + " With Mobile No " + TxtPhone.Text + " Against Amount : " + LblAmount.Text + " and Order Id is : " + LblOrderid.Text + "\n\nRegards\nBTBASKET";
            string _receiver = HiddenAdmin.Value;
            string strPostResponse = "";
            string smsRecvStatus = "";
            strPostResponse = SendSMS("bibek", "bibek123", _receiver, _smsMsg, "BTBSKT", "1207163949516070767", "1205160836437501893");
            smsRecvStatus = strPostResponse;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void SendHtmlMail()
    {
        MailMessage mail = new MailMessage();
        MailAddress from = new MailAddress("info@btbasket.com");
        mail.From = from;
        //mail.To.Add(new System.Net.Mail.MailAddress("info@btbasket.com"));
        mail.To.Add(new System.Net.Mail.MailAddress(TxteMail.Text));
        mail.To.Add(new System.Net.Mail.MailAddress("dash.bibek@gmail.com"));
        mail.Subject = "Order Details Of  " + TxtName.Text + "  On  " + HiddenDate.Value + "  And  " + HiddenTime.Value;

        mail.Body += "Order Confirmation On Order ID:  " + LblOrderid.Text + " <br/><br/>";
        mail.Body += "Transaction Number:  " + LblTranNumber.Text + " <br/><br/>";
        mail.Body += "Order Date & Time:  " + HiddenDate.Value + "  And  " + HiddenTime.Value + "<br/><br/>";
        mail.Body += "Order Amount:  " + LblAmount.Text + " <br/><br/><br><br>";
        mail.Body += "CUSTOMER DETAILS:  " + " <br/><br/><br>";
        mail.Body += "Customer Name:  " + TxtName.Text + " <br/><br/>";
        mail.Body += "Mobile Number:  " + TxtPhone.Text + " <br/><br/>";
        mail.Body += "Eamil-ID:  " + TxteMail.Text + "<br/><br/>";
        mail.Body += "Shipping Address:  " + TxtShipAddress.Text + " <br/><br/>";

        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "relay-hosting.secureserver.net";
        smtp.Port = 25;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("info@btbasket.com", "Amphi@12356#");
        smtp.EnableSsl = false;
        smtp.Send(mail);
    }
    public void generatestring()
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
    public void placetransaction()
    {
        Object transactioninsert = new Object();
        transactioninsert.Transaction_Id = LblTranNumber.Text;
        transactioninsert.Order_Id = LblOrderid.Text;
        transactioninsert.Email = TxteMail.Text;
        transactioninsert.Mobile = TxtPhone.Text;
        transactioninsert.Transaction_Amount = LblAmount.Text;
        transactioninsert.Transaction_Date = HiddenDate.Value;
        transactioninsert.Transaction_Time = HiddenTime.Value;

        BSLAYER.inserttransaction(transactioninsert);
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if(CheckBox1.Checked)
        {
            
            TxtShipPin.Text = "";
            TxtShipAddress.Text = "";
        }
        else
        {
            
            TxtShipPin.Text = TxtPin.Text;
            TxtShipAddress.Text = TxtAddress.Text;
           

        }
    }

    public void DeliveryTime()
    {
        DateTime utcTime = DateTime.UtcNow;
        TimeZoneInfo ISI = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, ISI);
        DateTime t1 = Convert.ToDateTime(localTime.ToShortTimeString());
        
        DateTime t10 = Convert.ToDateTime(("10:00 AM"));

        if (t1.TimeOfDay.Ticks > t10.TimeOfDay.Ticks)
        {
            //HiddenDelivery.Value = "Tomorrow";
            //Session["DeliveryTime"] = "Tomorrow";
            Lbltime.Text = "12 PM";
        }
        else
        {
            Lbltime.Text = "8AM";
            //Session["DeliveryTime"] = "Today";
            //HiddenDelivery.Value = "Today";
        }
    }
    public void PlaceOrderUser()
    {
        /*Insert into Order details*/
        if (TxtShipAddress.Text == "" && TxtShipPin.Text == "")
        {
            Object orderinsert = new Object();
            orderinsert.Order_Id = LblOrderid.Text;
            orderinsert.Amount = LblAmount.Text;
            orderinsert.Name = Session["Name"].ToString();
            orderinsert.Email = Session["Mail"].ToString();
            orderinsert.Mobile = Session["Mobile"].ToString();
            orderinsert.Address = Session["Address"].ToString();
            //orderinsert.Address = TxtShipAddress.Text;
            orderinsert.Pincode = int.Parse(Session["Pin"].ToString());
            //orderinsert.Pincode = int.Parse(TxtShipPin.Text);
            orderinsert.Order_Date = HiddenDate.Value;
            orderinsert.Order_Time = HiddenTime.Value;
            orderinsert.Delivery_Charges = HiddenCharge.Value;
            BSLAYER.insertorder(orderinsert);
        }
        else
        {
            Object orderinsert = new Object();
            orderinsert.Order_Id = LblOrderid.Text;
            orderinsert.Amount = LblAmount.Text;
            orderinsert.Name = Session["Name"].ToString();
            orderinsert.Email = Session["Mail"].ToString();
            orderinsert.Mobile = Session["Mobile"].ToString();
            orderinsert.Address = TxtShipAddress.Text;
            orderinsert.Pincode = int.Parse(TxtShipPin.Text);
            orderinsert.Order_Date = HiddenDate.Value;
            orderinsert.Order_Time = HiddenTime.Value;
            orderinsert.Delivery_Charges = HiddenCharge.Value;
            BSLAYER.insertorder(orderinsert);
        }
        
        
    }
    public void FillOrderList()
    {
        /*Insert into Order list*/
        foreach (GridViewRow gr in GridView1.Rows)
        {
        TextBox txtprice = (TextBox)gr.FindControl("TxtPrice");
        TextBox txtquan = (TextBox)gr.FindControl("TxtQuantity");
        TextBox txttot = (TextBox)gr.FindControl("TxtTotal");
        Object OrderItemInsert = new Object();
        OrderItemInsert.Order_Id = LblOrderid.Text;
        //OrderItemInsert.Email = TxteMail.Text;
        //OrderItemInsert.Mobile = TxtPhone.Text;
        //OrderItemInsert.Product_Name = gr.Cells[1].Text;
        //OrderItemInsert.Product_Quantity = gr.Cells[2].Text;
        //OrderItemInsert.Product_Brand = gr.Cells[3].Text;
        //OrderItemInsert.Product_Description = gr.Cells[4].Text;
        //OrderItemInsert.Product_Offer = gr.Cells[5].Text;
        OrderItemInsert.Product_Id = int.Parse(gr.Cells[6].Text);
        //OrderItemInsert.Product_Price = int.Parse(txtprice.Text);
        OrderItemInsert.Product_Unit = int.Parse(txtquan.Text);
        OrderItemInsert.Total_Price = int.Parse(txttot.Text);
        OrderItemInsert.Year = HiddenYear.Value;
        OrderItemInsert.Month = HiddenMonth.Value;
        OrderItemInsert.Created_Date = HiddenDate.Value;
        BSLAYER.InsertOrderItem(OrderItemInsert);
        }
        
    }
   
    protected void LnkAddress_Click(object sender, EventArgs e)
    {
        TxtAddress.ReadOnly = false;
        TxtAddress.Text = "";
    }
    protected void BtnOrder_Click(object sender, EventArgs e)
    {
        
        //System.Threading.Thread.Sleep(3000);
       
        PlaceOrderUser();
        FillOrderList();
        placetransaction();

        SendSms();
        SendSmsAdmin();
        //SendHtmlMail();

        TxtName.Text = "";
        TxteMail.Text = "";
        TxtPhone.Text = "";
        TxtAddress.Text = "";
        TxtPin.Text = "";
        TxtShipAddress.Text = "";
        TxtShipPin.Text = "";
        BtnOrder.Visible = false;
        PanelAlert.Visible = true;
        Response.Redirect("order-confirm");

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
    protected void Btnalert_Click(object sender, EventArgs e)
    {
        Response.Redirect("index");
    }
    
}