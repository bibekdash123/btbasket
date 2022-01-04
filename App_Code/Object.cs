using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Object
{
	public Object()
	{

    }
    #region User
    public string Name { get; set; }

    public string Mobile { get; set; }

    public string Email { get; set; }

    public string Address { get; set; }

    public string Password { get; set; }

    public int Pincode { get; set; }

    public string Query { get; set; }
    #endregion
    #region Admin
    public string Admin_Name { get; set; }
    public string Admin_Email { get; set; }
    public string Admin_Password { get; set; }
    public string Admin_Mobile { get; set; }
    #endregion
    #region Product
    public int Product_Id { get; set; }

    public int Category_Id { get; set; }

    public string Product_Name { get; set; }

    public string Product_Image { get; set; }

    public string Product_Description { get; set; }

    public string Product_Quantity { get; set; }

    public int Product_Price { get; set; }

    public int Product_Unit { get; set; }

    public int Total_Price { get; set; }

    public int Product_MRP { get; set; }

    public int Product_Margin { get; set; }

    public string Product_Brand { get; set; }

    public string Product_Offer { get; set; }

    public int Brand_Id { get; set; }

    public string Return_Type { get; set; }

    public string Message { get; set; }
    public string InStock { get; set; }
    #endregion
    #region Category
    public string Category_Name { get; set; }

    public string Created_Date { get; set; }

    #endregion
    #region Transaction
    public string PaymentMode { get; set; }
    public string Transaction_Id { get; set; }
    public string Transaction_Amount { get; set; }
    public string Transaction_Status { get; set; }
    public string Delivery_Status { get; set; }
    public string Transaction_Date { get; set; }
    public string Transaction_Time { get; set; }
    #endregion
    #region Order
    public string Order_Id { get; set; }
    public string Invoice_No { get; set; }
    public string Order_Date { get; set; }
    public string Order_Time { get; set; }
    public string Order_Status { get; set; }
    public string Amount { get; set; }
    public string Month { get; set; }
    public string Year { get; set; }
    public int Sale_Price { get; set; }
    public int Cost_Price { get; set; }
    public string Profit_Loss { get; set; }
    public string Delivery_Charges { get; set; }
    #endregion

}