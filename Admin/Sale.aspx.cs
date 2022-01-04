using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyBazarAdmin_Sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillOrderId();
        }
    }
    public void FillOrderId()
    {
        //here we fill order id from transaction details
        Object OrderIdSelect = new Object();
        DataTable dt = BSLAYER.SelectOrderId(OrderIdSelect);
        DdlOrderId.DataSource = dt;
        DdlOrderId.DataTextField = "Order_Id";
        DdlOrderId.DataValueField = "Order_Id";
        DdlOrderId.DataBind();
        DdlOrderId.Items.Insert(0, "Select OrderId");
    }
    public void TransactionDetails()
    {
        //here we fill transaction details according to order id
        Object TransactionSelect = new Object();
        TransactionSelect.Order_Id = DdlOrderId.SelectedValue;
        DataTable dt = BSLAYER.SelectTransaction(TransactionSelect);
        TxtDate.Text = dt.Rows[0]["Transaction_Date"].ToString();
        TxtSale.Text = dt.Rows[0]["Transaction_Amount"].ToString();
    }
    protected void DdlOrderId_SelectedIndexChanged(object sender, EventArgs e)
    {
        TransactionDetails();
    }
    public void InsertSaleDetails()
    {
        Object SaleDetailsInsert = new Object();
        SaleDetailsInsert.Order_Id = DdlOrderId.SelectedValue;
        SaleDetailsInsert.Transaction_Date = TxtDate.Text;
        SaleDetailsInsert.Year = TxtYear.Text;
        SaleDetailsInsert.Month = TxtMonth.Text;
        SaleDetailsInsert.Sale_Price = int.Parse(TxtSale.Text);
        SaleDetailsInsert.Cost_Price = int.Parse(TxtCost.Text);
        SaleDetailsInsert.Profit_Loss = TxtProfit.Text;
        BSLAYER.InsertSaleDetails(SaleDetailsInsert);
        TxtDate.Text = "";
        TxtMonth.Text = "";
        TxtSale.Text = "";
        TxtCost.Text = "";
        TxtProfit.Text = "";
        TxtYear.Text = "";
        DdlOrderId.ClearSelection();
    }

    protected void TxtCost_TextChanged(object sender, EventArgs e)
    {
        int sale = int.Parse(TxtSale.Text);
        int cost = int.Parse(TxtCost.Text);
        int profit = sale - cost;
        TxtProfit.Text = profit.ToString();
    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        InsertSaleDetails();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        InsertSaleDetails();
    }
}