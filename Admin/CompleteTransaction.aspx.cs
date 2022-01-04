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

public partial class MyBazarUser_CompleteTransaction : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCompleteTransactions();
        }
    }
    public void GetCompleteTransactions()
    {
        Object TransactionComplete = new Object();
        DataTable dt = BSLAYER.CompleteTransaction(TransactionComplete);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
            Lblmsg.Text = "No Transactions...";
        }
        else
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            sum = sum + Convert.ToInt16(e.Row.Cells[2].Text);

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[1].Text = "Total:";
            e.Row.Cells[2].Text = "Rs " + sum.ToString();
            e.Row.Font.Bold = true;

        }
    }

}
