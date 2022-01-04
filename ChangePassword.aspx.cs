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

public partial class MyBazarUser_ChangePassword : System.Web.UI.Page
{
    private decimal sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenMail.Value = Session["Mail"].ToString();  
        }
    }
    public void PasswordChange()
    {
        Object PasswordUpdate = new Object();
        PasswordUpdate.Email = HiddenMail.Value;
        PasswordUpdate.Password = TxtPwd.Text;
        BSLAYER.UpdatePassword(PasswordUpdate);
    }
    protected void BtnPwdUpdate_Click(object sender, EventArgs e)
    {
        PasswordChange();
        TxtPwd.Text = "";
        TxtcPwd.Text = "";
    }

}
