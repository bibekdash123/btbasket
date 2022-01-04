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

public partial class MyBazarUser_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buy " + Request.QueryString["N"].ToString() + " at lowest price online in bhubaneswar | btbasket.com";
        if (!IsPostBack)
        {
            HiddenCatagoryName.Value = Request.QueryString["N"].ToString();
            GetProductList();
            GetBrandByCategory();
            GetProductName();
           // BtnCart.Text = "VIEW BASKET:  " + Session["count"];
        }
    }
    public void GetProductList()
    {
        Object CategoryShow = new Object();
        CategoryShow.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.ShowCategory(CategoryShow);
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
    public void GetBrandByCategory()
    {
        Object CategoryByBrandFill = new Object();
        CategoryByBrandFill.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.BrandFillByCategory(CategoryByBrandFill);
        Ddlbrand.DataSource = dt;
        Ddlbrand.DataTextField = "Product_Brand";
        Ddlbrand.DataValueField = "Product_Brand";
        Ddlbrand.DataBind();
        Ddlbrand.Items.Insert(0, "--Filter By Brand--");
    }
    //here we will add product name in dropdown//
    public void GetProductName()
    {
        Object CatagoryByProduct = new Object();
        CatagoryByProduct.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.ProductByCatagory(CatagoryByProduct);
        DdlProduct.DataSource = dt;
        DdlProduct.DataTextField = "Product_Name";
        DdlProduct.DataValueField = "Product_Name";
        DdlProduct.DataBind();
        DdlProduct.Items.Insert(0, "--Filter By Product--");
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
                    cartdata.Columns.Add("Product_Id", typeof(string));

                    cartdata.Columns.Add("Product_Name", typeof(string));
                    cartdata.Columns.Add("Product_Description", typeof(string));
                    cartdata.Columns.Add("Product_Offer", typeof(string));
                    cartdata.Columns.Add("Product_Quantity", typeof(string));
                    cartdata.Columns.Add("Product_Brand", typeof(string));
                    cartdata.Columns.Add("Product_Price", typeof(string));
                    cartdata.Columns.Add("Product_Unit", typeof(string));
                    cartdata.Columns.Add("Product_Image", typeof(string));
                }
                else
                {
                    Label pid = (Label)e.Item.FindControl("Lblpid");

                    Label Price = (Label)e.Item.FindControl("LblPrice");
                    Label PName = (Label)e.Item.FindControl("LblProductName");
                    Label PDesc = (Label)e.Item.FindControl("LblDesc");
                    Label POffer = (Label)e.Item.FindControl("LblOffer");
                    Label PBrand = (Label)e.Item.FindControl("LblBrand");
                    Label Pqunatity = (Label)e.Item.FindControl("LblQuantity");
                    TextBox Pnum = (TextBox)e.Item.FindControl("TxtNum");
                    Label Message = (Label)e.Item.FindControl("LblMsg");
                    LinkButton lnkdl = (LinkButton)e.Item.FindControl("lnkdlview");
                    //Button btntext = (Button)e.Item.FindControl("BtnAdd");
                    LinkButton btntext = (LinkButton)e.Item.FindControl("BtnAdd");
                    Image ImgProductImage = (Image)e.Item.FindControl("ImageButton1");

                    DataRow dr = cartdata.NewRow();

                    dr["Product_Id"] = pid.Text;

                    dr["Product_Name"] = PName.Text;
                    dr["Product_Description"] = PDesc.Text;
                    dr["Product_Offer"] = POffer.Text;
                    dr["Product_Quantity"] = Pqunatity.Text;
                    dr["Product_Brand"] = PBrand.Text;
                    dr["Product_Price"] = Price.Text;
                    dr["Product_Image"] = ImgProductImage.ImageUrl;
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
                    Message.Visible = true;
                    lnkdl.Visible = true;
                    //btntext.Text = Session["count"].ToString() + " Item In Bag";
                    ((MasterGrocery_MyBazar)Master).SetErrorMsg(Session["count"].ToString());
                }
            }
            else
            {
                cartdata.Columns.Add("Product_Id", typeof(string));

                cartdata.Columns.Add("Product_Name", typeof(string));
                cartdata.Columns.Add("Product_Description", typeof(string));
                cartdata.Columns.Add("Product_Offer", typeof(string));
                cartdata.Columns.Add("Product_Quantity", typeof(string));
                cartdata.Columns.Add("Product_Brand", typeof(string));
                cartdata.Columns.Add("Product_Price", typeof(string));
                cartdata.Columns.Add("Product_Unit", typeof(string));
                cartdata.Columns.Add("Product_Image", typeof(string));

                Label pid = (Label)e.Item.FindControl("Lblpid");

                Label Price = (Label)e.Item.FindControl("LblPrice");
                Label PName = (Label)e.Item.FindControl("LblProductName");
                Label PDesc = (Label)e.Item.FindControl("LblDesc");
                Label POffer = (Label)e.Item.FindControl("LblOffer");
                Label PBrand = (Label)e.Item.FindControl("LblBrand");
                Label Pqunatity = (Label)e.Item.FindControl("LblQuantity");
                TextBox Pnum = (TextBox)e.Item.FindControl("TxtNum");
                Label Message = (Label)e.Item.FindControl("LblMsg");
                LinkButton lnkdl = (LinkButton)e.Item.FindControl("lnkdlview");
                //Button btntext = (Button)e.Item.FindControl("BtnAdd");
                LinkButton btntext = (LinkButton)e.Item.FindControl("BtnAdd");
                Image ImgProductImage = (Image)e.Item.FindControl("ImageButton1");

                DataRow dr = cartdata.NewRow();

                dr["Product_Id"] = pid.Text;

                dr["Product_Name"] = PName.Text;
                dr["Product_Description"] = PDesc.Text;
                dr["Product_Offer"] = POffer.Text;
                dr["Product_Quantity"] = Pqunatity.Text;
                dr["Product_Brand"] = PBrand.Text;
                dr["Product_Price"] = Price.Text;
                dr["Product_Image"] = ImgProductImage.ImageUrl;

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
                Message.Visible = true;
                lnkdl.Visible = true;
                //btntext.Text = Session["count"].ToString() + " Item In Bag";              
                ((MasterGrocery_MyBazar)Master).SetErrorMsg(Session["count"].ToString());

            }
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "ChangeCartCount("+ Session["count"].ToString() + ")", true);
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
            Panel p = (Panel)e.Item.FindControl("paneloffer");

            if (l.Text != "No Offer")
            {
                //l.Style.Add("font-size", "11px");
                //l.Style.Add("text-align", "right");
                //l.Style.Add("padding-top", "20px");
                //l.Style.Add("color", "#D5331E");
                //l.Style.Add("font-weight", "500");
               // p.Visible = true;
                p.Attributes["class"] = "textoffer";
                l.Attributes["class"] = "demo4";
                


            }
            else
            {
                
                l.Style.Add("color", "transparent");
                p.Attributes["class"] = "textnooffer";
            }
        }
    }
    
    protected void DdlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetProducts();
    }
    public void GetProducts()
    {
        Object ProductIndividual = new Object();
        ProductIndividual.Product_Name = DdlProduct.SelectedValue;
        DataTable dt = BSLAYER.IndividualProduct(ProductIndividual);
        int r = dt.Rows.Count;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        Object BrandByCategory = new Object();
        BrandByCategory.Product_Brand = Ddlbrand.SelectedValue;
        DataTable dt = BSLAYER.CategoryByBrand(BrandByCategory);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    //protected void BtnCart_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("my-cart");
    //}
}