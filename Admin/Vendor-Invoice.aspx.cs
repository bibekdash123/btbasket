using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyBazarAdmin_VendorInvoice : System.Web.UI.Page
{
    private int sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            HiddenYear.Value = DateTime.Now.Year.ToString();
            HiddenMonth.Value = DateTime.Now.ToString("MMMM");
            Btnprint.Visible = true;
            LblOrderid.Text = Request.QueryString["ID"];
            VendorInvoiceDetail();
            GenerateInvoiceNumber();
        }
    }
    public void GenerateInvoiceNumber()
    {
        string chars = "13579";
        char[] CharsString = new char[5];
        Random random = new Random();
        for (int i = 0; i < CharsString.Length; i++)
        {
            CharsString[i] = chars[random.Next(chars.Length)];
        }
        string Result = new String(CharsString);
        //LblInvoice.Text = Result.ToString();
    }
    
    public void VendorInvoiceDetail()
    {
        //here we fetch item according to order-id
        Object InvoiceVendor = new Object();
        InvoiceVendor.Order_Id = LblOrderid.Text;
        DataTable dt = BSLAYER.VendorInvoice(InvoiceVendor);
        LblName.Text = dt.Rows[0]["Name"].ToString();
        //LblMail.Text = dt.Rows[0]["Email"].ToString();
        LblMobile.Text = dt.Rows[0]["Mobile"].ToString();
        LblDate.Text = dt.Rows[0]["Created_Date"].ToString();
        LblAddress.Text = dt.Rows[0]["Address"].ToString();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        TableCell tc = new TableCell();
        tc.Height = Unit.Pixel(1);

        GridView gv1 = (GridView)sender;
        tc.ColumnSpan = gv1.Columns.Count;

        GridViewRow gr = new GridViewRow(-1, -1, DataControlRowType.DataRow, DataControlRowState.Normal);
        gr.Cells.Add(tc);

        Table gvTable = (Table)e.Row.Parent;
        gvTable.Controls.Add(gr);
    }
   
    protected void Btnprint_Click(object sender, EventArgs e)
    {
        Btnprint.Visible = false;
    }
}