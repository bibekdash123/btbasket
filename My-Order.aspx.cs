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

public partial class MyBazarUser_MyOrder : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenId.Value = Request.QueryString["Id"];
            ShowDetail(); 
        }
    }
    public void ShowDetail()
    {
        Object OrderIdWiseProduct = new Object();
        OrderIdWiseProduct.Order_Id = HiddenId.Value;
        DataTable dt = BSLAYER.ProductByOrderId(OrderIdWiseProduct);
        GridView1.Visible = true;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Session["FillCart"] = dt;
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        Session["loggedin"] = "1";
        Response.Redirect("Add-Cart.aspx");
    }
}
