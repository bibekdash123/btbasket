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

public partial class MyBazarUser_TotalOrders : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OrderDetails();
        }
    }
    public void OrderDetails()
    {
        Object OrdersAll = new Object();
        DataTable dt = BSLAYER.AllOrders(OrdersAll);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}
