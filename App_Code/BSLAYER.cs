using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


public class BSLAYER
{
    public BSLAYER()
    {

    }
    public static DataTable ViewUser(Object UserView)
    {
        SqlCommand cmd = new SqlCommand("View_User");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SelectOrderId(Object OrderIdSelect)
    {
        SqlCommand cmd = new SqlCommand("Select_OrderId");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SelectTransaction(Object TransactionSelect)
    {
        SqlCommand cmd = new SqlCommand("Fill_Transactions");
        cmd.Parameters.AddWithValue("@orderid", TransactionSelect.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ViewUserDetails(Object UserDetailsView)
    {
        SqlCommand cmd = new SqlCommand("Get_UserDetails");
        cmd.Parameters.AddWithValue("@mobile", UserDetailsView.Mobile);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ViewProduct(Object ProductView)
    {
        SqlCommand cmd = new SqlCommand("ViewProductByBrand");
        cmd.Parameters.AddWithValue("@brand", ProductView.Product_Brand);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductByCatagory(Object CatagoryByProduct)
    {
        SqlCommand cmd = new SqlCommand("ViewProductByCatagory");
        cmd.Parameters.AddWithValue("@catagoryname", CatagoryByProduct.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductName(Object NameProduct)
    {
        SqlCommand cmd = new SqlCommand("View_Productbybrand");
        cmd.Parameters.AddWithValue("@brand", NameProduct.Product_Brand);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable BrandName(Object NameBrand)
    {
        SqlCommand cmd = new SqlCommand("View_Brand");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable AllOrders(Object OrdersAll)
    {
        SqlCommand cmd = new SqlCommand("Select_AllOrders");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static void InsertSaleDetails(Object SaleDetailsInsert)
    {
        SqlCommand cmd = new SqlCommand("Save_SaleDetails");
        cmd.Parameters.AddWithValue("@orderid", SaleDetailsInsert.Order_Id);
        cmd.Parameters.AddWithValue("@date", SaleDetailsInsert.Transaction_Date);
        cmd.Parameters.AddWithValue("@year", SaleDetailsInsert.Year);
        cmd.Parameters.AddWithValue("@month", SaleDetailsInsert.Month);
        cmd.Parameters.AddWithValue("@saleprice", SaleDetailsInsert.Sale_Price);
        cmd.Parameters.AddWithValue("@costprice", SaleDetailsInsert.Cost_Price);
        cmd.Parameters.AddWithValue("@profit", SaleDetailsInsert.Profit_Loss);
        
        DBLAYER.ExecuteProcedure(cmd);
    }

    public static DataTable BabyFoodProduct(object productBabyFood)
    {
        throw new NotImplementedException();
    }

    public static void DeleteTransactionOrder(Object TransactionOrderDelete)
    {
        SqlCommand cmd = new SqlCommand("Delete_Order_Transaction");
        cmd.Parameters.AddWithValue("@orderid", TransactionOrderDelete.Order_Id);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void DeleteOrderDetails(Object OrderDetailsDelete)
    {
        SqlCommand cmd = new SqlCommand("Delete_Order_OrderDetails");
        cmd.Parameters.AddWithValue("@orderid", OrderDetailsDelete.Order_Id);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void DeleteOrderList(Object OrderListDelete)
    {
        SqlCommand cmd = new SqlCommand("Delete_Order_OrderList");
        cmd.Parameters.AddWithValue("@orderid", OrderListDelete.Order_Id);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static DataTable ViewSale(Object SaleView)
    {
        SqlCommand cmd = new SqlCommand("Select_Sales");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable YearSale(Object SaleYear)
    {
        SqlCommand cmd = new SqlCommand("SelectSale_Year");
        cmd.Parameters.AddWithValue("@year", SaleYear.Year);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable MonthSale(Object SaleMonth)
    {
        SqlCommand cmd = new SqlCommand("SelectSale_Month");
        cmd.Parameters.AddWithValue("@year", SaleMonth.Year);
        cmd.Parameters.AddWithValue("@month", SaleMonth.Month);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SelectItem(Object ItemSelect)
    {
        SqlCommand cmd = new SqlCommand("SelectItem_OrderId");
        cmd.Parameters.AddWithValue("@orderid", ItemSelect.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable VendorInvoice(Object InvoiceVendor)
    {
        SqlCommand cmd = new SqlCommand("Vendor_Invoice");
        cmd.Parameters.AddWithValue("@orderid", InvoiceVendor.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable categoryfill(Object fillcategory)
    {
        SqlCommand cmd = new SqlCommand("Fill_Category");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable FindDuplicate(Object DuplicateFind)
    {
        SqlCommand cmd = new SqlCommand("Select_DuplicateItem");
        cmd.Parameters.AddWithValue("@productname",DuplicateFind.Product_Name);
        cmd.Parameters.AddWithValue("@productbrand", DuplicateFind.Product_Brand);
        cmd.Parameters.AddWithValue("@productquantity", DuplicateFind.Product_Quantity);
        cmd.Parameters.AddWithValue("@productmrp", DuplicateFind.Product_MRP);
        cmd.Parameters.AddWithValue("@productdesc", DuplicateFind.Product_Description);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable DuplicateUser(Object UserDuplicate)
    {
        SqlCommand cmd = new SqlCommand("Select_DuplicateUser");
        cmd.Parameters.AddWithValue("@email", UserDuplicate.Email);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable DuplicateMobile(Object MobileDuplicate)
    {
        SqlCommand cmd = new SqlCommand("Select_Duplicatemobile");
        cmd.Parameters.AddWithValue("@mobile", MobileDuplicate.Mobile);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable productfill(Object fillproduct)
    {
        SqlCommand cmd = new SqlCommand("Fill_Product");
        cmd.Parameters.AddWithValue("category_id", fillproduct.Category_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SelectByBrand(Object BrandSelect)
    {
        SqlCommand cmd = new SqlCommand("FillProductByBrand");
        cmd.Parameters.AddWithValue("@productbrand", BrandSelect.Product_Brand);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable BrandFill(Object FillBrand)
    {
        SqlCommand cmd = new SqlCommand("Select_Brand");
        cmd.Parameters.AddWithValue("@productname", FillBrand.Product_Name);
        cmd.Parameters.AddWithValue("@categoryname", FillBrand.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable QtyFill(Object FillQty)
    {
        SqlCommand cmd = new SqlCommand("Select_ProductQuantity");
        cmd.Parameters.AddWithValue("@productname", FillQty.Product_Name);
        cmd.Parameters.AddWithValue("@categoryname", FillQty.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable BrandFillByCategory(Object CategoryByBrandFill)
    {
        SqlCommand cmd = new SqlCommand("Select_BrandByCategory");
        cmd.Parameters.AddWithValue("@categoryname", CategoryByBrandFill.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductByBrand(Object BrandByProduct)
    {
        SqlCommand cmd = new SqlCommand("SelectProduct_Brand");
        cmd.Parameters.AddWithValue("@brand", BrandByProduct.Product_Brand);
        cmd.Parameters.AddWithValue("@productname", BrandByProduct.Product_Name);
        cmd.Parameters.AddWithValue("@categoryname", BrandByProduct.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductByQty(Object QtyByProduct)
    {
        SqlCommand cmd = new SqlCommand("SelectProduct_Quantity");
        cmd.Parameters.AddWithValue("@quantity", QtyByProduct.Product_Quantity);
        cmd.Parameters.AddWithValue("@productname", QtyByProduct.Product_Name);
        cmd.Parameters.AddWithValue("@categoryname", QtyByProduct.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable CategoryByBrand(Object BrandByCategory)
    {
        SqlCommand cmd = new SqlCommand("SelectCategory_Brand");
        //cmd.Parameters.AddWithValue("@categoryname", BrandByCategory.Category_Name);
        cmd.Parameters.AddWithValue("@brand", BrandByCategory.Product_Brand);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductByMonth(Object MonthByProduct)
    {
        SqlCommand cmd = new SqlCommand("SelectProduct_ByMonth");
        cmd.Parameters.AddWithValue("@email", MonthByProduct.Email);
        cmd.Parameters.AddWithValue("@month", MonthByProduct.Month);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductByOrderId(Object OrderIdWiseProduct)
    {
        SqlCommand cmd = new SqlCommand("SelectProduct_ByOrderId");
        cmd.Parameters.AddWithValue("@orderid", OrderIdWiseProduct.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable PendingOrder(Object OrderPending)
    {
        SqlCommand cmd = new SqlCommand("Fill_PendingOrders");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable PendingStatus(Object StatusPending)
    {
        SqlCommand cmd = new SqlCommand("Select_DeliveryStatus");
        cmd.Parameters.AddWithValue("@orderid", StatusPending.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static void StatusUpdate(Object UpdateStatus)
    {
        SqlCommand cmd = new SqlCommand("Update_DeliveryStatus");
        cmd.Parameters.AddWithValue("@orderid", UpdateStatus.Order_Id);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static DataTable productshow(Object showproduct)
    {
        //SqlCommand cmd = new SqlCommand("Show_Product");
        SqlCommand cmd = new SqlCommand("FillProduct");
        cmd.Parameters.AddWithValue("categoryid", showproduct.Category_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable groceryfill(Object fillgrocery)
    {
        SqlCommand cmd = new SqlCommand("Fill_Grocery");
        cmd.Parameters.AddWithValue("@categoryid", fillgrocery.Category_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable pricefill(Object fillprice)
    {
        
        SqlCommand cmd = new SqlCommand("Select_Products");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable IndividualProduct(Object ProductIndividual )
    {
        SqlCommand cmd = new SqlCommand("FillProductByName");
        cmd.Parameters.AddWithValue("@productname", ProductIndividual.Product_Name);
        cmd.Parameters.AddWithValue("@productbrand", ProductIndividual.Product_Brand);
        cmd.Parameters.AddWithValue("@categoryname", ProductIndividual.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable DryFoodProduct(Object ProductDryFood)
    {
        SqlCommand cmd = new SqlCommand("FillDryFood");
        //cmd.Parameters.AddWithValue("@productname", ProductIndividual.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable BabyProducts(Object ProductsBaby)
    {
        SqlCommand cmd = new SqlCommand("BabyFood");
        //cmd.Parameters.AddWithValue("@productname", ProductIndividual.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable MonsoonFoodProduct(Object ProductMonsoonFood)
    {
        SqlCommand cmd = new SqlCommand("FillMonsoonFoods");
        //cmd.Parameters.AddWithValue("@productname", ProductIndividual.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable FillQuantity(Object QuantityFill)
    {
        SqlCommand cmd = new SqlCommand("ProductQuantityFill");
        cmd.Parameters.AddWithValue("@productname", QuantityFill.Product_Name);
        cmd.Parameters.AddWithValue("@productbrand", QuantityFill.Product_Brand);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SearchBox(Object BoxSearch)
    {
        SqlCommand cmd = new SqlCommand("FillProductBySearchBox");
        cmd.Parameters.AddWithValue("@productname", BoxSearch.Product_Name);
        cmd.Parameters.AddWithValue("@productbrand", BoxSearch.Product_Brand);
        cmd.Parameters.AddWithValue("@productdesc", BoxSearch.Product_Description);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable IndividualProductLow(Object ProductLowIndividual)
    {
        SqlCommand cmd = new SqlCommand("FillProductByPriceAscending");
        cmd.Parameters.AddWithValue("@productname", ProductLowIndividual.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable IndividualProductHigh(Object ProductHighIndividual)
    {
        SqlCommand cmd = new SqlCommand("FillProductByPriceDescending");
        cmd.Parameters.AddWithValue("@productname", ProductHighIndividual.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ShowCategory(Object CategoryShow)
    {
        SqlCommand cmd = new SqlCommand("FillProductByCategory");
        cmd.Parameters.AddWithValue("@categoryname", CategoryShow.Category_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable FillOffer(Object OfferFill)
    {
        SqlCommand cmd = new SqlCommand("Fill_Offer");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable quantityfill(Object fillquantity)
    {
        SqlCommand cmd = new SqlCommand("Fill_Quantity");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable SelectQuantity(Object QuantitySelect)
    {
        SqlCommand cmd = new SqlCommand("FillQuantityByProduct");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductPricefill(Object fillProductPrice)
    {
        SqlCommand cmd = new SqlCommand("Fill_ProductPrice");
        cmd.Parameters.AddWithValue("@quantity", fillProductPrice.Product_Quantity);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    //public static void SaveProduct(Object ProductSave)
    //{
    //    SqlCommand cmd = new SqlCommand("Product_Detail");
    //    cmd.Parameters.AddWithValue("@categoryid", ProductSave.Category_Id);
    //    cmd.Parameters.AddWithValue("@productname", ProductSave.Product_Name);
    //    cmd.Parameters.AddWithValue("@date", ProductSave.Created_Date);
    //    DBLAYER.ExecuteProcedure(cmd);
    //}
    public static void SaveBrand(Object BrandSave)
    {
        SqlCommand cmd = new SqlCommand("Brand_Details");
        cmd.Parameters.AddWithValue("@productid", BrandSave.Product_Id);
        cmd.Parameters.AddWithValue("@brandname", BrandSave.Product_Brand);
        cmd.Parameters.AddWithValue("@date", BrandSave.Created_Date);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void insertorder(Object orderinsert)
    {
        SqlCommand cmd = new SqlCommand("Insert_Order");
        cmd.Parameters.AddWithValue("@orderid", orderinsert.Order_Id);
        cmd.Parameters.AddWithValue("@amount", orderinsert.Amount);
        cmd.Parameters.AddWithValue("@name", orderinsert.Name);
        cmd.Parameters.AddWithValue("@email", orderinsert.Email);
        cmd.Parameters.AddWithValue("@mobile", orderinsert.Mobile);
        cmd.Parameters.AddWithValue("@address", orderinsert.Address);
        cmd.Parameters.AddWithValue("@pin", orderinsert.Pincode);
        cmd.Parameters.AddWithValue("@order_date", orderinsert.Order_Date);
        cmd.Parameters.AddWithValue("@order_time", orderinsert.Order_Time);
        cmd.Parameters.AddWithValue("@deliverycharges", orderinsert.Delivery_Charges);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void InsertOrderItem(Object OrderItemInsert)
    {
        SqlCommand cmd = new SqlCommand("Insert_OrderItems");
        cmd.Parameters.AddWithValue("@orderid", OrderItemInsert.Order_Id);
       // cmd.Parameters.AddWithValue("@email", OrderItemInsert.Email);
        //cmd.Parameters.AddWithValue("@mobile", OrderItemInsert.Mobile);
        cmd.Parameters.AddWithValue("@productid", OrderItemInsert.Product_Id);
        //cmd.Parameters.AddWithValue("@productname", OrderItemInsert.Product_Name);
        //cmd.Parameters.AddWithValue("@productbrand", OrderItemInsert.Product_Brand);
        //cmd.Parameters.AddWithValue("@productqunatity", OrderItemInsert.Product_Quantity);
        //cmd.Parameters.AddWithValue("@productprice", OrderItemInsert.Product_Price);
        cmd.Parameters.AddWithValue("@productunit", OrderItemInsert.Product_Unit);
        cmd.Parameters.AddWithValue("@totalprice", OrderItemInsert.Total_Price);
        //cmd.Parameters.AddWithValue("@productdescription", OrderItemInsert.Product_Description);
       // cmd.Parameters.AddWithValue("@productoffer", OrderItemInsert.Product_Offer);
        cmd.Parameters.AddWithValue("@year", OrderItemInsert.Year);
        cmd.Parameters.AddWithValue("@month", OrderItemInsert.Month);
        cmd.Parameters.AddWithValue("@date", OrderItemInsert.Created_Date);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void UpdateOrder(Object OrderUpdate)
    {
        SqlCommand cmd = new SqlCommand("Update_OrderStatus");
        cmd.Parameters.AddWithValue("@orderid", OrderUpdate.Order_Id);
        cmd.Parameters.AddWithValue("@orderdate", OrderUpdate.Order_Date);
        cmd.Parameters.AddWithValue("@ordertime", OrderUpdate.Order_Time);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void inserttransaction(Object transactioninsert)
    {
        SqlCommand cmd = new SqlCommand("Insert_Transaction");
        cmd.Parameters.AddWithValue("@transactionid", transactioninsert.Transaction_Id);
        cmd.Parameters.AddWithValue("@orderid", transactioninsert.Order_Id);
        cmd.Parameters.AddWithValue("@email", transactioninsert.Email);
        cmd.Parameters.AddWithValue("@mobile", transactioninsert.Mobile);
        cmd.Parameters.AddWithValue("@transactionamount", transactioninsert.Transaction_Amount);
        cmd.Parameters.AddWithValue("@transactiondate", transactioninsert.Transaction_Date);
        cmd.Parameters.AddWithValue("@transactiontime", transactioninsert.Transaction_Time);
        DBLAYER.ExecuteProcedure(cmd);
    }
    
    public static void saveproduct(Object productsave)
    {
        SqlCommand cmd = new SqlCommand("Save_Product");
        cmd.Parameters.AddWithValue("@categoryid", productsave.Category_Id);
        cmd.Parameters.AddWithValue("@productname", productsave.Product_Name);
        cmd.Parameters.AddWithValue("@brandname", productsave.Product_Brand);
        cmd.Parameters.AddWithValue("@productquantity", productsave.Product_Quantity);
        cmd.Parameters.AddWithValue("@productmrp", productsave.Product_MRP);
        //cmd.Parameters.AddWithValue("@productmargin", productsave.Product_Margin);
        cmd.Parameters.AddWithValue("@productprice", productsave.Product_Price);
        cmd.Parameters.AddWithValue("@productimage", productsave.Product_Image);
        cmd.Parameters.AddWithValue("@productdescription", productsave.Product_Description);
        cmd.Parameters.AddWithValue("@productoffer", productsave.Product_Offer);
        cmd.Parameters.AddWithValue("@instock", productsave.InStock);
        cmd.Parameters.AddWithValue("@date", productsave.Created_Date);

        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void saveoffer(Object offersave)
    {
        SqlCommand cmd = new SqlCommand("Save_Product");
        cmd.Parameters.AddWithValue("@categoryid", offersave.Product_Id);
        cmd.Parameters.AddWithValue("@productname", offersave.Product_Name);
        cmd.Parameters.AddWithValue("@brandname", offersave.Product_Brand);
        cmd.Parameters.AddWithValue("@offer", offersave.Product_Offer);
        cmd.Parameters.AddWithValue("@date", offersave.Created_Date);

        DBLAYER.ExecuteProcedure(cmd);
    }
    //public static void saveprice(Object pricesave)
    //{
    //    SqlCommand cmd = new SqlCommand("Save_Price");
    //    cmd.Parameters.AddWithValue("@categoryid", pricesave.Category_Id);
    //    cmd.Parameters.AddWithValue("@productid", pricesave.Product_Id);
    //    cmd.Parameters.AddWithValue("@productquantity", pricesave.Product_Quantity);
    //    cmd.Parameters.AddWithValue("@productprice", pricesave.Product_Price);
    //    cmd.Parameters.AddWithValue("@date", pricesave.Created_Date);
        
    //    DBLAYER.ExecuteProcedure(cmd);
    //}
    public static void saveprice(Object pricesave)
    {
        SqlCommand cmd = new SqlCommand("Save_Price");
        cmd.Parameters.AddWithValue("@categoryid", pricesave.Category_Id);
        cmd.Parameters.AddWithValue("@productid", pricesave.Product_Id);
        cmd.Parameters.AddWithValue("@brandid", pricesave.Brand_Id);
        cmd.Parameters.AddWithValue("@productquantity", pricesave.Product_Quantity);
        cmd.Parameters.AddWithValue("@productprice", pricesave.Product_Price);
        cmd.Parameters.AddWithValue("@date", pricesave.Created_Date);

        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void insertcart(Object cartinsert)
    {
        SqlCommand cmd = new SqlCommand("Insert_Cart");

    }
    public static void UpdatePassword(Object PasswordUpdate)
    {
        SqlCommand cmd = new SqlCommand("Update_Password");
        cmd.Parameters.AddWithValue("@mobile", PasswordUpdate.Mobile);
        cmd.Parameters.AddWithValue("@password", PasswordUpdate.Password);
        DBLAYER.ExecuteProcedure(cmd);

    }
    public static void UpdateEmail(Object EmailUpdate)
    {
        SqlCommand cmd = new SqlCommand("Update_Email");
        cmd.Parameters.AddWithValue("@email", EmailUpdate.Email);
        cmd.Parameters.AddWithValue("@mobile", EmailUpdate.Mobile);
        DBLAYER.ExecuteProcedure(cmd);

    }
    public static void UpdateProfile(Object ProfileUpdate)
    {
        SqlCommand cmd = new SqlCommand("Update_Profile");
        cmd.Parameters.AddWithValue("@email", ProfileUpdate.Email);
        cmd.Parameters.AddWithValue("@mobile", ProfileUpdate.Mobile);
        cmd.Parameters.AddWithValue("@address", ProfileUpdate.Address);
        cmd.Parameters.AddWithValue("@name", ProfileUpdate.Name);
        cmd.Parameters.AddWithValue("@pin", ProfileUpdate.Pincode);
        DBLAYER.ExecuteProcedure(cmd);

    }
    public static void signupuser(Object usersignup)
    {
        SqlCommand cmd = new SqlCommand("Register_User");
        cmd.Parameters.AddWithValue("@email", usersignup.Email);
        cmd.Parameters.AddWithValue("@name", usersignup.Name);
        cmd.Parameters.AddWithValue("@phone", usersignup.Mobile);
        cmd.Parameters.AddWithValue("@address", usersignup.Address);
        cmd.Parameters.AddWithValue("@password", usersignup.Password);
        cmd.Parameters.AddWithValue("@pincode", usersignup.Pincode);
        DBLAYER.ExecuteProcedure(cmd);

    }
    public static DataTable LoginUser(Object UserLogin)
    {
        SqlCommand cmd = new SqlCommand("User_Login");
        cmd.Parameters.AddWithValue("@mobile",UserLogin.Mobile);
        cmd.Parameters.AddWithValue("@password",UserLogin.Password);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable LoginAdmin(Object AdminLogin)
    {
        SqlCommand cmd = new SqlCommand("Admin_Login");
        cmd.Parameters.AddWithValue("@email", AdminLogin.Admin_Email);
        cmd.Parameters.AddWithValue("@password", AdminLogin.Admin_Password);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable selectorder(Object orderselect)
    {
        SqlCommand cmd = new SqlCommand("Select_UserOrders");
        //cmd.Parameters.AddWithValue("@email", orderselect.Email);
        cmd.Parameters.AddWithValue("@mobile", orderselect.Mobile);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ViewOrder(Object Orderview)
    {
        SqlCommand cmd = new SqlCommand("Search_Order");
        //cmd.Parameters.AddWithValue("@email", orderselect.Email);
        cmd.Parameters.AddWithValue("@orderid", Orderview.Order_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable selecttransaction(Object transactionselect)
    {
        SqlCommand cmd = new SqlCommand("Select_Transactiondetails");
        cmd.Parameters.AddWithValue("@email", transactionselect.Email);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable AllTransaction(Object TransactionAll)
    {
        SqlCommand cmd = new SqlCommand("Select_PendingTransactions");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable TransactionYearMonth(Object YearMonthTransaction)
    {
        SqlCommand cmd = new SqlCommand("SelectTransaction_Year_Month");
        cmd.Parameters.AddWithValue("@year", YearMonthTransaction.Year);
        cmd.Parameters.AddWithValue("@month", YearMonthTransaction.Month);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable CompleteTransaction(Object TransactionComplete)
    {
        SqlCommand cmd = new SqlCommand("Select_DeliveredTransaction");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable UserInfo(Object InfoUser)
    {
        SqlCommand cmd = new SqlCommand("Select_Users");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductInfo(Object InfoProduct)
    {
        SqlCommand cmd = new SqlCommand("Select_AllProducts");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable ProductDetail(Object DetailProduct)
    {
        SqlCommand cmd = new SqlCommand("SelectProductByBrandName");
        cmd.Parameters.AddWithValue("@brand", DetailProduct.Product_Brand);
        cmd.Parameters.AddWithValue("@name", DetailProduct.Product_Name);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable UserFeedback(Object FeedbackUser)
    {
        SqlCommand cmd = new SqlCommand("Show_Review");
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static void usercontact(Object contactuser)
    {
        SqlCommand cmd = new SqlCommand("Contact_User");
        cmd.Parameters.AddWithValue("@mail", contactuser.Email);
        cmd.Parameters.AddWithValue("@name", contactuser.Name);
        cmd.Parameters.AddWithValue("@phone", contactuser.Mobile);
        cmd.Parameters.AddWithValue("@query", contactuser.Query);
        cmd.Parameters.AddWithValue("@date", contactuser.Created_Date);
        DBLAYER.ExecuteProcedure(cmd);

    }
    public static DataTable selectbrand(Object brandselect)
    {
        SqlCommand cmd = new SqlCommand("Fill_Brand");
        cmd.Parameters.AddWithValue("@productid", brandselect.Product_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static DataTable FetchProduct(Object ProductFetch)
    {
        SqlCommand cmd = new SqlCommand("Edit_Product");
        cmd.Parameters.AddWithValue("@productid", ProductFetch.Product_Id);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static void UpdateProduct(Object ProductUpdate)
    {
        SqlCommand cmd = new SqlCommand("Update_Product");
        cmd.Parameters.AddWithValue("@productid", ProductUpdate.Product_Id);
        cmd.Parameters.AddWithValue("@productquantity", ProductUpdate.Product_Quantity);
        cmd.Parameters.AddWithValue("@productmrp", ProductUpdate.Product_MRP);
        cmd.Parameters.AddWithValue("@productprice", ProductUpdate.Product_Price);
        cmd.Parameters.AddWithValue("@productoffer", ProductUpdate.Product_Offer);
        cmd.Parameters.AddWithValue("@productdesc", ProductUpdate.Product_Description);
        cmd.Parameters.AddWithValue("@instock", ProductUpdate.InStock);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static void ReturnPolicy(Object PolicyReturn)
    {
        SqlCommand cmd = new SqlCommand("Insert_Return");
        cmd.Parameters.AddWithValue("@email", PolicyReturn.Email);
        cmd.Parameters.AddWithValue("@orderid", PolicyReturn.Order_Id);
        cmd.Parameters.AddWithValue("@returntype", PolicyReturn.Return_Type);
        cmd.Parameters.AddWithValue("@message", PolicyReturn.Message);
        cmd.Parameters.AddWithValue("@date", PolicyReturn.Created_Date);
        cmd.Parameters.AddWithValue("@month", PolicyReturn.Month);
        DBLAYER.ExecuteProcedure(cmd);
    }
    public static DataTable FetchPassword(Object PasswordFetch)
    {
        SqlCommand cmd = new SqlCommand("Fetch_Password");
        cmd.Parameters.AddWithValue("@email", PasswordFetch.Email);
        DataTable dt = DBLAYER.ExecuteGetDataTable(cmd);
        return dt;
    }
    public static void DeleteAccount(Object AccountDelete)
    {
        SqlCommand cmd = new SqlCommand("Delete_User");
        cmd.Parameters.AddWithValue("@email", AccountDelete.Email);
        DBLAYER.ExecuteProcedure(cmd);
    }
    //#endregion
}