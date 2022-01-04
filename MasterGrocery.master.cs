using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterGrocery_MyBazar : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Session["count"] != null)
            {
                Lblcartcount.Text = Session["count"].ToString();
            }
            else
            {
                Lblcartcount.Text = "0";
            }
        }
        else
        {
            if (Session["count"] != null)
            {
                Lblcartcount.Text = Session["count"].ToString();
            }
            else
            {
                Lblcartcount.Text = "0";
            }
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


    public void SetErrorMsg(string cartCount)
    {
        this.Lblcartcount.Text = cartCount;
     
    }

}
