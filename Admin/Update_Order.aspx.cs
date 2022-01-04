using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;

public partial class MyBazarAdmin_Update_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowPendingOrder();
        }
    }
    public void ShowPendingOrder()
    {
        Object OrderPending = new Object();
        DataTable dt = BSLAYER.PendingOrder(OrderPending);
        DdlOrder.DataSource = dt;
        DdlOrder.DataTextField = "Order_Id";
        DdlOrder.DataValueField = "Order_Id";
        DdlOrder.DataBind();
        DdlOrder.Items.Insert(0, "Select Pending Orders");
    }
    protected void DdlOrder_SelectedIndexChanged(object sender, EventArgs e)
    {
        Object StatusPending = new Object();
        StatusPending.Order_Id = DdlOrder.SelectedValue;
        DataTable dt = BSLAYER.PendingStatus(StatusPending);
        TxtEmail.Text = dt.Rows[0]["Email"].ToString();
        TxtName.Text = dt.Rows[0]["Name"].ToString();
        TxtPhone.Text = dt.Rows[0]["Mobile"].ToString();
        TxtAmount.Text = dt.Rows[0]["Transaction_Amount"].ToString();
        TxtDate.Text = dt.Rows[0]["Transaction_Date"].ToString();
        TxtTime.Text = dt.Rows[0]["Transaction_Time"].ToString();
        TxtStatus.Text = dt.Rows[0]["Delivery_Status"].ToString();
    }
    public void StatusUpdate()
    {
        Object UpdateStatus = new Object();
        UpdateStatus.Order_Id = DdlOrder.SelectedValue;
        BSLAYER.StatusUpdate(UpdateStatus);
        
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
    public void SendAcknowledge()
    {
        try
        {
            string _smsMsg = "Dear," + TxtName.Text + "Your order is successfully delivered against ORDER NO :   " + DdlOrder.SelectedValue + "for future use";
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
    protected void BtnStatus_Click(object sender, EventArgs e)
    {
        //here we update the delivery statuswhich was pending//
        StatusUpdate();
        PanelAlert.Visible = true;
        SendAcknowledge();
        TxtEmail.Text = "";
        TxtName.Text = "";
        TxtPhone.Text = "";
        TxtAmount.Text = "";
        TxtDate.Text = "";
        TxtTime.Text = "";
        TxtStatus.Text = "";
        DdlOrder.ClearSelection();
    }
    public void DeleteTransaction()
    {
        Object TransactionOrderDelete = new Object();
        TransactionOrderDelete.Order_Id = DdlOrder.SelectedValue;
        BSLAYER.DeleteTransactionOrder(TransactionOrderDelete);
    }
    public void DeleteOrderDetails()
    {
        Object OrderDetailsDelete = new Object();
        OrderDetailsDelete.Order_Id = DdlOrder.SelectedValue;
        BSLAYER.DeleteOrderDetails(OrderDetailsDelete);
    }
    public void DeleteOrderList()
    {
        Object OrderListDelete = new Object();
        OrderListDelete.Order_Id = DdlOrder.SelectedValue;
        BSLAYER.DeleteOrderList(OrderListDelete);
    }
    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        //here we delete the unwaned orders from transaction-details,order-details,order-list//
        DeleteTransaction();
        DeleteOrderDetails();
        DeleteOrderList();
        TxtEmail.Text = "";
        TxtName.Text = "";
        TxtPhone.Text = "";
        TxtAmount.Text = "";
        TxtDate.Text = "";
        TxtTime.Text = "";
        TxtStatus.Text = "";
        DdlOrder.ClearSelection();
    }
}