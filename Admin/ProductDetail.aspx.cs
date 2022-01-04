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

public partial class MyBazarAdmin_ProductDeatil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GetProductDetails();
            //GetProductName();
            GetBrand();
        }
    }
    public void GetBrand()
    {
        Object NameBrand = new Object();
        DataTable dt = BSLAYER.BrandName(NameBrand);
        Ddlbrand.DataSource = dt;
        Ddlbrand.DataTextField = "Product_Brand";
        Ddlbrand.DataValueField = "Product_Brand";
        Ddlbrand.DataBind();
        Ddlbrand.Items.Insert(0, "--Filter By Brand--");
    }
    public void GetProductName()
    {
        Object NameProduct = new Object();
        NameProduct.Product_Brand = Ddlbrand.SelectedValue;
        DataTable dt = BSLAYER.ProductName(NameProduct);
        DdlProduct.DataSource = dt;
        DdlProduct.DataTextField = "Product_Name";
        DdlProduct.DataValueField = "Product_Name";
        DdlProduct.DataBind();
        DdlProduct.Items.Insert(0, "--Filter By Product--");
    }
    protected void Ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetProductName();
    }
    public void GetProductDetails()
    {
        Object InfoProduct = new Object();
        DataTable dt = BSLAYER.ProductInfo(InfoProduct);
        GridView4.DataSource = dt;
        GridView4.DataBind();
    }
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if(e.CommandName == "Select")
        //{
        //    int rowIndex = Convert.ToInt32(e.CommandArgument);
        //    GridViewRow row = GridView4.Rows[rowIndex];
        //    int id = int.Parse((row.FindControl("LblPid") as Label).Text);
        //    int mrp = int.Parse((row.FindControl("LblMrp") as Label).Text);
        //    int price = int.Parse((row.FindControl("LblPrice") as Label).Text);
        //    string weight = (row.FindControl("LblQuantity") as Label).Text;
        //    string desc = (row.FindControl("LblDesc") as Label).Text;
        //    string offer = (row.FindControl("LblOffer") as Label).Text;
        //    string stock = (row.FindControl("Lblstock") as Label).Text;
        //    TxtDesc.Text = desc.ToString();
        //    Hiddenpid.Value = id.ToString();
        //    Txtweight.Text = weight.ToString();
        //    Txtmrp.Text = mrp.ToString();
        //    Txtprice.Text = price.ToString();
        //    TxtOffer.Text = offer.ToString();
        //    Txtstock.Text = stock.ToString();
        //}   
    }
    protected void BtnBulkUpdate_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView4.Rows)
        {
            var Pid = row.FindControl("LblPid") as Label;
            var mrp = row.FindControl("TxtMrp") as TextBox;
            var price = row.FindControl("TxtPrice") as TextBox;
            var offer = row.FindControl("TxtOffer") as TextBox;
            var instock = row.FindControl("TxtInStock") as TextBox;
            var qty = row.FindControl("TxtQty") as TextBox;
            var des = row.FindControl("TxtDesc") as TextBox;

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["GROC"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Product_Master set Product_Quantity = @productquantity, Product_Price = @productprice, Product_MRP = @productmrp, Product_Offer = @productoffer, Product_Description = @productdesc, InStock=@instock where Product_Id = @productid ",con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@productid", Pid.Text);
            cmd.Parameters.AddWithValue("@productmrp", mrp.Text);
            cmd.Parameters.AddWithValue("@productprice", price.Text);
            cmd.Parameters.AddWithValue("@productoffer", offer.Text);
            cmd.Parameters.AddWithValue("@productdesc", des.Text);
            cmd.Parameters.AddWithValue("@instock", instock.Text);
            cmd.Parameters.AddWithValue("@productquantity", qty.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            DdlProduct.Items.Clear();
            Ddlbrand.SelectedIndex = 0;

        }
    }
    protected void DdlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        Object DetailProduct = new Object();
        DetailProduct.Product_Brand = Ddlbrand.SelectedValue;
        DetailProduct.Product_Name = DdlProduct.SelectedValue;
        DataTable dt = BSLAYER.ProductDetail(DetailProduct);
        GridView4.DataSource = dt;
        GridView4.DataBind();
    }
    //public void showresult()
    //{
    //    Object ProductUpdate = new Object();
    //    ProductUpdate.Product_Id = int.Parse(Hiddenpid.Value);
    //    ProductUpdate.Product_Quantity = Txtweight.Text;
    //    ProductUpdate.Product_MRP = int.Parse(Txtmrp.Text);
    //    ProductUpdate.Product_Price = int.Parse(Txtprice.Text);
    //    ProductUpdate.Product_Offer = TxtOffer.Text;
    //    ProductUpdate.Product_Description = TxtDesc.Text;
    //    ProductUpdate.InStock = Txtstock.Text;
    //    BSLAYER.UpdateProduct(ProductUpdate);
    //    TxtDesc.Text = "";
    //    Txtweight.Text = "";
    //    Txtmrp.Text = "";
    //    Txtprice.Text = "";
    //    TxtOffer.Text = "";
    //    Txtstock.Text = "";
    //    GetProductDetails();
    //    DdlProduct.Items.Clear();
    //    Ddlbrand.SelectedIndex = 0;

    //}
    //protected void BtnUpdate_Click(object sender, EventArgs e)
    //{
    //    showresult();
    //}

    
}