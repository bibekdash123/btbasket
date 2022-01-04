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

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Login()
    {
        Object AdminLogin = new Object();
        AdminLogin.Admin_Email = TxtMail.Text;
        AdminLogin.Admin_Password = TxtPassword.Text;
        DataTable dt = BSLAYER.LoginAdmin(AdminLogin);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            Response.Redirect("AdminLogin.aspx");
            TxtMail.Text = "";
            TxtPassword.Text = "";
            TxtMail.BorderColor = System.Drawing.Color.Red;
            TxtPassword.BorderColor = System.Drawing.Color.Red;
        }
        else
        {
            Session["Name"] = dt.Rows[0]["Admin_Name"].ToString();
            Response.Redirect("AddItem.aspx");
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        Login();
    }
}