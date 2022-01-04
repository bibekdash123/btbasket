using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MyBazarAdmin_EditItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowProduct();
        }
    }
    public void ShowProduct()
    {
        DdlProduct.Items.Add("Toor Dal");
        DdlProduct.Items.Add("Urad Dal");
        DdlProduct.Items.Add("Moong Dal");
        DdlProduct.Items.Add("kolath Dal");
        DdlProduct.Items.Add("Masoor Dal");
        DdlProduct.Items.Add("Soya Products");
        DdlProduct.Items.Add("Besan");
        DdlProduct.Items.Add("Maida");
        DdlProduct.Items.Add("Sooji");
        DdlProduct.Items.Add("Ata");
        DdlProduct.Items.Add("Salt");
        DdlProduct.Items.Add("Sugar");
        DdlProduct.Items.Add("Jaggery");
        DdlProduct.Items.Add("Mustard Oil");
        DdlProduct.Items.Add("Refined Oil");
        DdlProduct.Items.Add("Groundnut Oil");
        DdlProduct.Items.Add("Olive Oil");
        DdlProduct.Items.Add("Ghee");
        DdlProduct.Items.Add("Regular Rice");
        DdlProduct.Items.Add("Boiled Rice");
        DdlProduct.Items.Add("Basmati Rice");
        DdlProduct.Items.Add("Other Rice Product");
        DdlProduct.Items.Add("Almond");
        DdlProduct.Items.Add("Cashew");
        DdlProduct.Items.Add("Spices-Masala");
        DdlProduct.Items.Add("Deos-Perfumes");
        DdlProduct.Items.Add("Hair Oil");
        DdlProduct.Items.Add("Hair Conditioner");
        DdlProduct.Items.Add("Hair Color");
        DdlProduct.Items.Add("Shampoo");
        DdlProduct.Items.Add("Body Wash");
        DdlProduct.Items.Add("Face Wash");
        DdlProduct.Items.Add("Hand Wash");
        DdlProduct.Items.Add("Soap");
        DdlProduct.Items.Add("Mouth Wash");
        DdlProduct.Items.Add("Tooth Paste");
        DdlProduct.Items.Add("Tooth Brush");
        DdlProduct.Items.Add("Body Oil");
        DdlProduct.Items.Add("Body Lotion");
        DdlProduct.Items.Add("Body Scrub");
        DdlProduct.Items.Add("Face Cream");
        DdlProduct.Items.Add("Grooming");
        DdlProduct.Items.Add("Liquid Detaergents");
        DdlProduct.Items.Add("Washing Bars");
        DdlProduct.Items.Add("Washing Powders");
        DdlProduct.Items.Add("Pooja Needs");
        DdlProduct.Items.Add("Air Freshners");
        DdlProduct.Items.Add("Repellent");
        DdlProduct.Items.Add("Breads-Cakes");
        DdlProduct.Items.Add("Rusk-Khara");
        DdlProduct.Items.Add("Milk");
        DdlProduct.Items.Add("Dahi");
        DdlProduct.Items.Add("Lassi");
        DdlProduct.Items.Add("Butter-Cheese");
        DdlProduct.Items.Add("Fruit Juice");
        DdlProduct.Items.Add("Soft Drinks");
        DdlProduct.Items.Add("Green Tea");
        DdlProduct.Items.Add("Herbal Tea");
        DdlProduct.Items.Add("Tea");
        DdlProduct.Items.Add("Instant Coffee");
        DdlProduct.Items.Add("Organic Coffee");
        DdlProduct.Items.Add("Pickles");
        DdlProduct.Items.Add("Noodles");
        DdlProduct.Items.Add("Snacks");
        DdlProduct.Items.Add("Biscuits");
        DdlProduct.Items.Insert(0, "Select Products");
    }
    protected void DdlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
        //here we retrieve data from database//
        Object ProductFetch = new Object();
        ProductFetch.Product_Name = DdlProduct.SelectedValue;
        //ProductFetch.Product_Brand = DdlBrand.SelectedValue;
        //ProductFetch.Product_Quantity = DdlQuantity.SelectedValue;
        //ProductFetch.Product_MRP = int.Parse(Txtmrp.Text);
        DataTable dt = BSLAYER.FetchProduct(ProductFetch);
        GridView1.Visible = true;
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lblid = GridView1.Rows[e.RowIndex].FindControl("LblId") as Label;

        TextBox txtqty = GridView1.Rows[e.RowIndex].FindControl("TxtQty") as TextBox;
        TextBox txtmrp = GridView1.Rows[e.RowIndex].FindControl("TxtMrp") as TextBox;
        TextBox txtprice = GridView1.Rows[e.RowIndex].FindControl("TxtPrice") as TextBox;
        TextBox txtoffer = GridView1.Rows[e.RowIndex].FindControl("TxtOffer") as TextBox;
        TextBox txtdesc = GridView1.Rows[e.RowIndex].FindControl("TxtDesc") as TextBox;


        Object ProductUpdate = new Object();

        ProductUpdate.Product_Id = int.Parse(lblid.Text);
        ProductUpdate.Product_Quantity = txtqty.Text;
        ProductUpdate.Product_MRP = int.Parse(txtmrp.Text);
        ProductUpdate.Product_Price = int.Parse(txtprice.Text);
        ProductUpdate.Product_Offer = txtoffer.Text;
        ProductUpdate.Product_Description = txtdesc.Text;
        BSLAYER.UpdateProduct(ProductUpdate);

        PanelAlert.Visible = true;
    }
    public void UpdateItem()
    {
        
        
        //PanelAlert.Visible = true;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }

   
}