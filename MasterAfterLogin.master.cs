using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MyBazarUser_MyBazar : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //Label2.Text = Session["Name"].ToString();
            Label3.Text = Session["Name"].ToString();
        }
    }
    protected void lnkareaserviced_Click(object sender, EventArgs e)
    {

    }
    protected void lnkcustomerservice_Click(object sender, EventArgs e)
    {

    }
    protected void btnRandom_Click(object sender, EventArgs e)
    {
        Session["Search"] = TextBox1.Text;
        Response.Redirect("search-item");
    }
    protected void LnkLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("home");
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("home");
    }
}
