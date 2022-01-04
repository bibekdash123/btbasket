using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyBazarAdmin_Invoice : System.Web.UI.Page
{
    private int sum = 0;
    int Charges = 50;
    int Final;
    int Amnt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            HiddenYear.Value = DateTime.Now.Year.ToString();
            HiddenMonth.Value = DateTime.Now.ToString("MMMM");

            Btnprint.Visible = true;
            LblOrderid.Text = Request.QueryString["ID"];
            ItemDetail();
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
    public void ItemDetail()
    {
        //here we fetch item according to order-id
        Object ItemSelect = new Object();
        ItemSelect.Order_Id = LblOrderid.Text;
        DataTable dt = BSLAYER.SelectItem(ItemSelect);
        LblName.Text = dt.Rows[0]["Name"].ToString();
        LblTot.Text = dt.Rows[0]["Amount"].ToString();
        LblMail.Text = dt.Rows[0]["Email"].ToString();
        LblMobile.Text = dt.Rows[0]["Mobile"].ToString();
        LblDate.Text = dt.Rows[0]["Created_Date"].ToString();
        //LblAddress.Text = dt.Rows[0]["Address"].ToString();
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

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           sum += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Total_Price"));
           
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            
            Label lblamount = (Label)e.Row.FindControl("lblTotal");
            //Label charge = (Label)e.Row.FindControl("LblCharge");
            lblamount.Text = sum.ToString();
            //Amnt = int.Parse(lblamount.Text);
            if (Amnt < 500)
            {
            //    Final = Amnt + Charges;
            //    lblamount.Text = Final.ToString();
            //    e.Row.Cells[3].Text = "Delivery Charges: 50";
            //    e.Row.Font.Bold = true;
            //    e.Row.Font.Size = 10;
               
            }
            else
            {
                lblamount.Text = sum.ToString();
                
                
            }
            lblamount.Font.Bold = true;
            
        }
    }
    protected void Btnprint_Click(object sender, EventArgs e)
    {
        //SaveInvoiceNo();
        Btnprint.Visible = false;
    }
}