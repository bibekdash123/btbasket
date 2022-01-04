using System;
using System.Collections;
using System.Configuration;
using System.Data;
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

public partial class MyBazarUser_PendingTransaction : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillYear();
            FillMonth();
            GetTransactionDetails();
        }
    }
    public void FillYear()
    {
        DdlYear.Items.Add("2017");
        DdlYear.Items.Add("2018");
        DdlYear.Items.Add("2019");
        DdlYear.Items.Add("2020");
        DdlYear.Items.Add("2021");
        DdlYear.Items.Add("2022");
        DdlYear.Items.Insert(0, "Select Year");
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
    protected void BtnShowOrder_Click(object sender, EventArgs e)
    {

        Object YearMonthTransaction = new Object();
        YearMonthTransaction.Year = DdlYear.SelectedValue;
        YearMonthTransaction.Month = DdlMonth.SelectedValue;
        DataTable dt = BSLAYER.TransactionYearMonth(YearMonthTransaction);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
            Lblmsg.Text = "No Transactions...";
        }
        else
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
    public void GetTransactionDetails()
    {
        Object TransactionAll = new Object();
        DataTable dt = BSLAYER.AllTransaction(TransactionAll);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
            Lblmsg.Text = "No Transactions...";
        }
        else
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

    }
}
