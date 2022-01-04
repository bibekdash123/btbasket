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

public partial class Order_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }

    }
    public void GetOrderDetails()
    {
        Object Orderview = new Object();
        Orderview.Order_Id = Txtsearch.Text;
        DataTable dt = BSLAYER.ViewOrder(Orderview);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Lbldate.Text = "Date Of Order:"+ dt.Rows[0]["Created_Date"].ToString();
        
    }

    protected void Btnordersearch_Click(object sender, EventArgs e)
    {
        GetOrderDetails();
    }
}