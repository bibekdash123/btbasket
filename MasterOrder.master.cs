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

public partial class MyBazarUser_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session.Clear();
            //Session.Abandon();
        }
    }
    //protected void BtnSearch_Click(object sender, EventArgs e)
    //{
    //    Session["Search"] = TextBox1.Text;
    //    Response.Redirect("Search-Item.aspx");
    //}
   
}
