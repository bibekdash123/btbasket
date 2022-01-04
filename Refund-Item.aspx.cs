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

public partial class MyBazarUser_RefundItem : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropdown();
            if (Session["Loggedin"] != null)
            {
                TxtFrom.Text = Session["Mail"].ToString();
                TxtFrom.ReadOnly = true;
            }
            else
            {
                TxtFrom.ReadOnly = false;
                TxtFrom.Text = "";
            }
            
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
            HiddenMonth.Value = DateTime.Now.ToString("MMMM");
            
        }
       
    }
    public void BindDropdown()
    {
        DdlRefund.Items.Add("Refund item");
        DdlRefund.Items.Add("Exchange Item");
        DdlRefund.Items.Insert(0,"--Select Refund/Exchange--");
    }
    public void SaveReturnQuery()
    {
        Object PolicyReturn = new Object();
        PolicyReturn.Email = TxtFrom.Text;
        PolicyReturn.Order_Id = TxtOrderId.Text;
        PolicyReturn.Return_Type = DdlRefund.SelectedValue;
        PolicyReturn.Message = TxtMessage.Text;
        PolicyReturn.Created_Date = HiddenDate.Value;
        PolicyReturn.Month = HiddenMonth.Value;
        BSLAYER.ReturnPolicy(PolicyReturn);

    }
    public void RefundMail()
    {
        MailMessage mail = new MailMessage();
        MailAddress from = new MailAddress("no-reply@btbasket.com");
        mail.From = from;
        mail.To.Add(new System.Net.Mail.MailAddress("customercare@btbasket.com"));
        mail.To.Add(new System.Net.Mail.MailAddress(TxtFrom.Text));
        mail.Subject = "Query For Refund or Excahnge Item";
        mail.Body += "Below is the details of the item to be refund or exchanged" + "<br/><br/>";
        mail.Body += "Email-ID:" + TxtFrom.Text + " <br/><br/>";
        mail.Body += "Problem Details:" + TxtMessage.Text + " <br/><br/>";
        
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "relay-hosting.secureserver.net";
        smtp.Port = 25;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("no-reply@btbasket.com", "Amphi12356");
        smtp.EnableSsl = false;
        smtp.Send(mail);
    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        SaveReturnQuery();
        RefundMail();
        PanelAlert.Visible = true;
    }
    
}
