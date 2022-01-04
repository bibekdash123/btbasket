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
public partial class MyBazarUser_Grocery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = Request.QueryString["N"].ToString() + " at lowest price in bhubaneswar | btbasket.com" + "\n\n" + "www.btbasket.com";
       
        if (!IsPostBack)
        {
            HiddenProductName.Value = Request.QueryString["N"].ToString();
            HiddenBrandName.Value = Request.QueryString["N"].ToString();
            HiddenCatagoryName.Value = Request.QueryString["N"].ToString();
            GetProductList();
            GetBrandByProduct();
            GetQuantityByProduct();
            FillDropdown();    
        }
    }
    public void FillDropdown()
    {
        DdlSort.Items.Add("Price-Low To High");
        DdlSort.Items.Add("Price-High To Low");
        DdlSort.Items.Insert(0, "--SORT BY PRICE--");
    }
    public void FillQuantity()
    {
        Object QuantityFill = new Object();
    }
    protected void DdlSort_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DdlSort.SelectedValue == "Price-Low To High")
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
        else if (DdlSort.SelectedValue == "Price-High To Low")
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
    }
    public void GetProductList()
    {
        Object ProductIndividual = new Object();
        ProductIndividual.Product_Name = HiddenProductName.Value;
        ProductIndividual.Product_Brand = HiddenBrandName.Value;
        ProductIndividual.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.IndividualProduct(ProductIndividual);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            DdlBrand.Visible = false;
            DdlPacket.Visible = false;
            DdlSort.Visible = false;
            PanelAlert.Visible = true;
            lbtcart.Visible = false;
        }
        else
        {
            DdlBrand.Visible = true;
            DdlPacket.Visible = true;
            DdlSort.Visible = true;
            PanelAlert.Visible = false;
            lbtcart.Visible = true;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
    public void GetBrandByProduct()
    {
        Object FillBrand = new Object();
        FillBrand.Product_Name = HiddenProductName.Value;
        FillBrand.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.BrandFill(FillBrand);
        DdlBrand.DataSource = dt;
        DdlBrand.DataTextField = "Product_Brand";
        DdlBrand.DataValueField = "Product_Brand";
        DdlBrand.DataBind();
        DdlBrand.Items.Insert(0, "--SORT BY BRAND--");
    }
    public void GetQuantityByProduct()
    {
        Object FillQty = new Object();
        FillQty.Product_Name = HiddenProductName.Value;
        FillQty.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.QtyFill(FillQty);
        DdlPacket.DataSource = dt;
        DdlPacket.DataTextField = "Product_Quantity";
        DdlPacket.DataValueField = "Product_Quantity";
        DdlPacket.DataBind();
        DdlPacket.Items.Insert(0, "--SORT BY QTY--");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddtoCart")
        {
            
            Label1.Visible = true;
            
            DataTable cartdata = new DataTable();
            if (Session["FillCart"] != null)
            {
                cartdata = (DataTable)Session["FillCart"];
                

                if (cartdata==null)
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
                    LinkButton btntext = (LinkButton)e.Item.FindControl("BtnAdd");
                    LinkButton lnkdl = (LinkButton)e.Item.FindControl("lnkdlview");
                    Label mlabelcart = (Label)Master.FindControl("Lblkartcount");
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
                    Label1.Text = Session["count"].ToString() ;
                    //mlabelcart.Text = Session["count"].ToString();
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
                LinkButton btntext = (LinkButton)e.Item.FindControl("BtnAdd");
                //Label mlabelcart = (Label)Master.FindControl("Lblkartcount");
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
                Label1.Text = Session["count"].ToString() ;
                //mlabelcart.Text = Session["count"].ToString();
                Message.Visible = true;
                lnkdl.Visible = true;
                //btntext.Text = Session["count"].ToString() + " Item In Bag";
                ((MasterGrocery_MyBazar)Master).SetErrorMsg(Session["count"].ToString());

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
            Panel p = (Panel)e.Item.FindControl("paneloffer");

            if (l.Text != "No Offer")
            {
                l.Style.Add("font-size", "13px");
                l.Style.Add("text-align", "right");
                l.Style.Add("padding-top", "20px");
                l.Style.Add("color", "#283646");
                l.Style.Add("font-weight", "500");
                // p.Visible = true;
                p.Attributes["class"] = "textoffer";

            }
            else
            {

                l.Style.Add("color", "transparent");
                p.Attributes["class"] = "textnooffer";
            }
        }
    }
    protected void DdlBrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        Object BrandByProduct = new Object();
        BrandByProduct.Product_Brand = DdlBrand.SelectedValue;
        BrandByProduct.Product_Name = HiddenProductName.Value;
        BrandByProduct.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.ProductByBrand(BrandByProduct);
        
        int r = dt.Rows.Count;
        if (r < 1)
        {
            LblMsg.Visible = true;
            DataList1.Visible = false;
        }
        else
        {
            LblMsg.Visible = false;
            DataList1.Visible = true;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

    }
    protected void DdlPacket_SelectedindexChanged(object sender, EventArgs e)
    {
        Object QtyByProduct = new Object();
        QtyByProduct.Product_Quantity = DdlPacket.SelectedValue;
        QtyByProduct.Product_Name = HiddenProductName.Value;
        QtyByProduct.Category_Name = HiddenCatagoryName.Value;
        DataTable dt = BSLAYER.ProductByQty(QtyByProduct);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}