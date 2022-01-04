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

public partial class MyBazarAdmin_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
            //HiddenCatId.Value = ddlcategory.SelectedValue;
            
            ShowCategory();
            ShowProduct();
            Fillquantity();
            generatestring();
        }
        
    }
    public void generatestring()
    {
        string chars = "012345";
        char[] CharsString = new char[5];
        Random random = new Random();

        for (int i = 0; i < CharsString.Length; i++)
        {
            CharsString[i] = chars[random.Next(chars.Length)];
        }

        string Result = new String(CharsString);

        lblproduct_no.Text = lblcode.Text + Result;
    }
    public void ShowCategory()
    {
        Object fillcategory = new Object();
        DataTable dt = BSLAYER.categoryfill(fillcategory);
        ddlcategory.DataSource = dt;
        ddlcategory.DataTextField = "Category_Name";
        ddlcategory.DataValueField = "Category_Id";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, "Select Category");
    }

    public void ShowProduct()
    {
        Object fillproduct = new Object();
        DataTable dt = BSLAYER.productfill(fillproduct);
        DdlProduct.DataSource = dt;
        DdlProduct.DataTextField = "Product_Name";
        DdlProduct.DataValueField = "Product_ID";
        DdlProduct.DataBind();
        DdlProduct.Items.Insert(0, "Select Product");
    }
    public void Fillquantity()
    {
        DdlQuantity.Items.Add("50gm");
        DdlQuantity.Items.Add("100gm");
        DdlQuantity.Items.Add("200gm");
        DdlQuantity.Items.Add("250gm");
        DdlQuantity.Items.Add("500gm");
        DdlQuantity.Items.Add("1Kg");
        DdlQuantity.Items.Add("1.5Kg");
        DdlQuantity.Items.Add("2Kg");
        DdlQuantity.Items.Add("5Kg");
        DdlQuantity.Items.Add("10Kg");
        DdlQuantity.Items.Add("25Kg");
        DdlQuantity.Items.Insert(0, "Select Item Quantity");
    }
    public void Insertproduct()
    {
            string filename = ImgFileUpload.PostedFile.FileName;
            ImgFileUpload.SaveAs(Server.MapPath("~/Product Image/" + filename));
            Object productsave = new Object();
            productsave.Category_Id = int.Parse(ddlcategory.SelectedValue);
            productsave.Product_Name = TxtName.Text;
            productsave.Product_Image = "~/Product Image/" + filename;
            productsave.Product_Description = TxtDescription.Text;
            productsave.Product_Quantity = DdlQuantity.SelectedValue;
            productsave.Product_Price =int.Parse( TxtPrice.Text);
            productsave.Product_Brand = TxtBrand.Text;
            productsave.Created_Date = HiddenDate.Value;
            BSLAYER.saveproduct(productsave);

    }
    public void SaveProductPrice()
    {
        Object pricesave = new Object();
        //pricesave.Category_Id = int.Parse(HiddenCatId.Value);
        pricesave.Category_Id = int.Parse(LblId.Text);
        pricesave.Product_Id = int.Parse(DdlProduct.SelectedValue);
        pricesave.Product_Price = int.Parse(TxtPrice.Text);
        pricesave.Product_Quantity = DdlQuantity.SelectedValue;
        pricesave.Created_Date = HiddenDate.Value;
        BSLAYER.saveprice(pricesave);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Insertproduct();
        //ShowProduct();
        LblId.Text = ddlcategory.SelectedValue;
        LblProductname.Text = TxtName.Text;
        ddlcategory.ClearSelection();
        TxtName.Text = "";
        TxtBrand.Text = "";
        TxtDescription.Text = "";
    }
    protected void BtnPrice_Click(object sender, EventArgs e)
    {
        SaveProductPrice();
        DdlProduct.ClearSelection();
        DdlQuantity.ClearSelection();
        TxtPrice.Text = "";
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcategory.SelectedIndex != 0)
        {
            Object fillproduct = new Object();
            fillproduct.Category_Id = int.Parse(ddlcategory.SelectedValue);
            DataTable dt = BSLAYER.productfill(fillproduct);
            DdlProduct.DataSource = dt;
            DdlProduct.DataTextField = "Product_Name";
            DdlProduct.DataValueField = "Product_Id";
            DdlProduct.DataBind();
            DdlProduct.Items.Insert(0, "Select Product");
        }
        else
        {
            DdlProduct.Items.Clear();
        }
    }
}
