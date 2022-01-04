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

public partial class MyBazarUser_SearchItem : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {

            HiddenSearch.Value = Session["Search"].ToString();
            GetProductList();
            BtnCart.Text = "VIEW KART:  " + Session["count"];
        }
    }
    public void GetProductList()
    {
        Object BoxSearch = new Object();
        BoxSearch.Product_Name = HiddenSearch.Value;
        BoxSearch.Product_Brand = HiddenSearch.Value;
        BoxSearch.Product_Description = HiddenSearch.Value;
        DataTable dt = BSLAYER.SearchBox(BoxSearch);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
        }
        else
        {
            PanelAlert.Visible = false;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddtoCart")
        {
            DataTable cartdata = new DataTable();
            if (Session["FillCart"] != null)
            {
                cartdata = (DataTable)Session["FillCart"];

                if (cartdata == null)
                {
                    cartdata.Columns.Add("Product_Name", typeof(string));
                    cartdata.Columns.Add("Product_Description", typeof(string));
                    cartdata.Columns.Add("Product_Offer", typeof(string));
                    cartdata.Columns.Add("Product_Quantity", typeof(string));
                    cartdata.Columns.Add("Product_Brand", typeof(string));
                    cartdata.Columns.Add("Product_Price", typeof(string));
                    cartdata.Columns.Add("Product_Unit", typeof(string));
                }
                else
                {

                    Label Price = (Label)e.Item.FindControl("LblPrice");
                    Label PName = (Label)e.Item.FindControl("LblProductName");
                    Label PDesc = (Label)e.Item.FindControl("LblDesc");
                    Label POffer = (Label)e.Item.FindControl("LblOffer");
                    Label PBrand = (Label)e.Item.FindControl("LblBrand");
                    Label Pqunatity = (Label)e.Item.FindControl("LblQuantity");
                    TextBox Pnum = (TextBox)e.Item.FindControl("TxtNum");
                    Label Message = (Label)e.Item.FindControl("LblMsg");
                    LinkButton lnkdl = (LinkButton)e.Item.FindControl("lnkdlview");
                    Button btntext = (Button)e.Item.FindControl("BtnAdd");
                    DataRow dr = cartdata.NewRow();

                    dr["Product_Name"] = PName.Text;
                    dr["Product_Description"] = PDesc.Text;
                    dr["Product_Offer"] = POffer.Text;
                    dr["Product_Quantity"] = Pqunatity.Text;
                    dr["Product_Brand"] = PBrand.Text;
                    dr["Product_Price"] = Price.Text;
                    if (Pnum.Text == "")
                    {
                        dr["Product_Unit"] = 1;
                    }
                    else
                    {
                        dr["Product_Unit"] = Pnum.Text;
                    }
                    cartdata.Rows.Add(dr);
                    Session["FillCart"] = cartdata;
                    Session["count"] = Convert.ToInt32(Session["count"]) + 1;
                    BtnCart.Text = "VIEW KART:  " + Session["count"].ToString();
                    Message.Visible = true;
                    lnkdl.Visible = true;
                    btntext.Text = Session["count"].ToString() + " Item In Bag";
                }
            }
            else
            {
               
                cartdata.Columns.Add("Product_Name", typeof(string));
                cartdata.Columns.Add("Product_Description", typeof(string));
                cartdata.Columns.Add("Product_Offer", typeof(string));
                cartdata.Columns.Add("Product_Quantity", typeof(string));
                cartdata.Columns.Add("Product_Brand", typeof(string));
                cartdata.Columns.Add("Product_Price", typeof(string));
                cartdata.Columns.Add("Product_Unit", typeof(string));
                
                Label Price = (Label)e.Item.FindControl("LblPrice");
                Label PName = (Label)e.Item.FindControl("LblProductName");
                Label PDesc = (Label)e.Item.FindControl("LblDesc");
                Label POffer = (Label)e.Item.FindControl("LblOffer");
                Label PBrand = (Label)e.Item.FindControl("LblBrand");
                Label Pqunatity = (Label)e.Item.FindControl("LblQuantity");
                TextBox Pnum = (TextBox)e.Item.FindControl("TxtNum");
                Label Message = (Label)e.Item.FindControl("LblMsg");
                LinkButton lnkdl = (LinkButton)e.Item.FindControl("lnkdlview");
                Button btntext = (Button)e.Item.FindControl("BtnAdd");
                DataRow dr = cartdata.NewRow();

                dr["Product_Name"] = PName.Text;
                dr["Product_Description"] = PDesc.Text;
                dr["Product_Offer"] = POffer.Text;
                dr["Product_Quantity"] = Pqunatity.Text;
                dr["Product_Brand"] = PBrand.Text;
                dr["Product_Price"] = Price.Text;
                if (Pnum.Text == "")
                {
                    dr["Product_Unit"] = 1;
                }
                else
                {
                    dr["Product_Unit"] = Pnum.Text;
                }
                cartdata.Rows.Add(dr);
                Session["FillCart"] = cartdata;
                Session["count"] = Convert.ToInt32(Session["count"]) + 1;
                BtnCart.Text = "VIEW KART:  " + Session["count"].ToString();
                Message.Visible = true;
                lnkdl.Visible = true;
                //btntext.Text = Session["count"].ToString() + " Item In Bag";
            }
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "ChangeCartCount(" + Session["count"].ToString() + ")", true);
        }
        
    }
    protected void ImgAddCart_Click(object sender, EventArgs e)
    {
        if (Session["FillCart"] != null)
        {

        }
        else
        {

        }
    }
    protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
    {

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Label l = (Label)e.Item.FindControl("LblOffer");
            
           

            if (l.Text != "No Offer")
            {
                l.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                l.ForeColor = System.Drawing.Color.Transparent;
                
            }
        }
    }
    protected void BtnLow_Click(object sender, EventArgs e)
    {
        Object ProductLowIndividual = new Object();
        ProductLowIndividual.Product_Name = HiddenProductName.Value;
        DataTable dt = BSLAYER.IndividualProductLow(ProductLowIndividual);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
        }
        else
        {
            PanelAlert.Visible = false;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    protected void BtnHigh_Click(object sender, EventArgs e)
    {
        Object ProductHighIndividual = new Object();
        ProductHighIndividual.Product_Name = HiddenProductName.Value;
        DataTable dt = BSLAYER.IndividualProductHigh(ProductHighIndividual);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            PanelAlert.Visible = true;
        }
        else
        {
            PanelAlert.Visible = false;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    
    protected void BtnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("my-cart");
    }
}