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

public partial class MyBazarAdmin_SaleDetails : System.Web.UI.Page
{
    private int sum = 0;
    private int sum1 = 0;
    private int sum2 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillOrderId();
            GetSaleDetails();
            FillYear();
            FillYear1();
            FillMonth();
        }
    }
    public void FillYear()
    {
        DdlYear.Items.Add("2020");
        DdlYear.Items.Add("2021");
        DdlYear.Items.Add("2023");
        DdlYear.Items.Insert(0,"Select Year");
    }
    public void FillYear1()
    {
        DdlYear1.Items.Add("2020");
        DdlYear1.Items.Add("2021");
        DdlYear1.Items.Add("2023");
        DdlYear1.Items.Insert(0, "Select Year");
    }
    public void FillMonth()
    {
        DdlMonth.Items.Add("January");
        DdlMonth.Items.Add("February");
        DdlMonth.Items.Add("March");
        DdlMonth.Items.Add("April");
        DdlMonth.Items.Add("May");
        DdlMonth.Items.Add("June");
        DdlMonth.Items.Add("July");
        DdlMonth.Items.Add("August");
        DdlMonth.Items.Add("September");
        DdlMonth.Items.Add("October");
        DdlMonth.Items.Add("November");
        DdlMonth.Items.Add("December");
        DdlMonth.Items.Insert(0, "Select Month");
    }
    protected void DdlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        Object SaleYear = new Object();
        SaleYear.Year = DdlYear.SelectedValue;
        DataTable dt = BSLAYER.YearSale(SaleYear);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        DdlYear.ClearSelection();
    }
    protected void DdlMonth_SelectedIndexChanged(object sender,EventArgs e)
    {
        FillMonthSale();
    }
    public void FillMonthSale()
    {
        Object SaleMonth = new Object();
        SaleMonth.Year = DdlYear1.SelectedValue;
        SaleMonth.Month = DdlMonth.SelectedValue;
        DataTable dt = BSLAYER.MonthSale(SaleMonth);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        DdlYear1.ClearSelection();
        DdlMonth.ClearSelection();
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
        
        
    //}
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
    public void GetSaleDetails()
    {
        Object SaleView = new Object();
        DataTable dt = BSLAYER.ViewSale(SaleView);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            sum = sum + Convert.ToInt16(e.Row.Cells[3].Text);
            sum1 = sum1 + Convert.ToInt16(e.Row.Cells[4].Text);
            sum2 = sum2 + Convert.ToInt16(e.Row.Cells[5].Text);
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[2].Text = "Total amount";
            e.Row.Cells[3].Text = "Rs " + sum.ToString();
            e.Row.Cells[4].Text = "Rs " + sum1.ToString();
            e.Row.Cells[5].Text = "Rs " + sum2.ToString();
            e.Row.Font.Bold = true;
        }
    }
}