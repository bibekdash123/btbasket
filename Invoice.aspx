<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="MyBazarAdmin_Invoice" Title="btbasket | Customer Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Online Grocery Shopping</title>
    <%--<link rel="Stylesheet" href="../CSS/mybazar.css" type="text/css" />
    <link rel="Stylesheet" href="../CSS/new css.css" type="text/css" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<%--    <link href="../css/font-awesome.min.css" rel="stylesheet"/>
    <link href="../css/prettyPhoto.css" rel="stylesheet"/>
    <link href="../css/price-range.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
	<link href="../css/main1.css" rel="stylesheet"/>--%>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/main1.css" rel="stylesheet" type="text/css" />
    <link href="css/Style1.css" rel="stylesheet" type="text/css" />
	<link href="../css/responsive.css" rel="stylesheet"/>   
   <%-- <link rel="shortcut icon" href="../images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png"/>--%>
     <style>
         .table{
             margin-top:20px;
         }
        .table-hover tbody th{
    border:1px solid #333;
}
        .invoice-card .card{
    border:0 !important;
        margin:20px;
}
.invoice-card .card-header {
    background: none !important;
        border:0;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
<div class="container"> 
<div class="row">
    <div class="col-md-4">
<asp:Image ID="Image1" runat="server" ImageUrl="~/newlogo.png" AlternateText="btbasket" />
    </div>
    <div class="col-md-8 pull-left">
<h3>Customer Invoice</h3>
<asp:Button ID="Btnprint" runat="server" BorderStyle="None" Text="PRINT INVOICE" onclientclick="javascript:window.print();" OnClick="Btnprint_Click" />
    </div>

</div>
</div>
<div class="container mt-3 invoice-card"> 
<div class="row">
<div class="col-md-6">
<div class="card">
    <div class="card-header">
<h5>Shipped To:</h5>
    </div>
<div class="card-body">
<b>ORDER #:</b><b><asp:Label ID="LblOrderid" runat="server" style="font-size:medium"></asp:Label></b> <h5>Total :<asp:Label ID="LblTot" runat="server" style="font-size:medium"></asp:Label></h5>
<%--<b>Order #:</b><asp:Label ID="LblOrderid" runat="server" style="font-size:smaller"></asp:Label><br />--%>
<h5><asp:Label ID="LblName" runat="server" style="font-size:small"></asp:Label></h5>
<h5><asp:Label ID="LblMail" runat="server" style="font-size:small"></asp:Label></h5>
<h5><asp:Label ID="LblMobile" runat="server" style="font-size:small"></asp:Label></h5>
<h5><asp:Label ID="LblDate" runat="server" style="font-size:small"></asp:Label></h5>

<b>Payment Mode: </b><asp:Label ID="Lblmode" runat="server" style="font-size:small" Text="Cash On Delivery (COD)"></asp:Label><br />
</div>
</div>
</div>
<div class="col-md-6 text-right">
<div class="card">
<div class="card-header">
<h5>Shipped By:</h5>
    </div>
<div class="card-body">      
<h5>WWW.btbasket.com</h5>
<h6>Plot No-891/935,Nayapalli</h6>
<h6>Bhubaneswar-751006</h6>
<h6>7077998587,9040450505</h6>
<h6>info@btbasket.com</h6>
    </div>
</div>
</div>

<div class="col-md-2">
            <asp:HiddenField ID="HiddenYear" runat="server" />
            <asp:HiddenField ID="HiddenMonth" runat="server" />
        </div>        
<div class="col-md-12 col-sm-12">
<div class="table-responsive">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="Small" Height="100px" CssClass="table table-hover" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" ShowFooter="true">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-BackColor="#F5F5F5" HeaderStyle-ForeColor="#333" HeaderStyle-Width="5%">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="5px"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Item Details" HeaderStyle-Width="70px">
<ItemTemplate>
<b>Product :</b><asp:Label ID="LblProductName" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label><br />
<b>Desc:</b><asp:Label ID="LblDesc" runat="server" Text='<%# Bind("Product_Description") %>'></asp:Label>
<b>Brand :</b><asp:Label ID="LblBrand" runat="server" Text='<%# Bind("Product_Brand") %>'></asp:Label><br />
<b>Offer :</b><asp:Label ID="LblOffer" runat="server" Text='<%# Bind("Product_Offer") %>'></asp:Label>
</ItemTemplate>
<ItemStyle BackColor="transparent" ForeColor="#333" Font-Size="small" Width="200px" HorizontalAlign="Left" />
<HeaderStyle BackColor="#F5F5F5" ForeColor="#333" />
</asp:TemplateField>
<%--<asp:BoundField HeaderText="Item" DataField="Product_Name" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Description" DataField="Product_Description" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Offer" DataField="Product_Offer" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Brand" DataField="Product_Brand" ItemStyle-HorizontalAlign="Left" />--%>
<asp:TemplateField  HeaderText="Weight" HeaderStyle-BackColor="#F5F5F5" HeaderStyle-ForeColor="#333">
<ItemTemplate>
<asp:Label ID="lblquantity" runat="server" Text='<%#Eval("Product_Quantity") %>' Font-Bold="true"/>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px"></ItemStyle>
</asp:TemplateField>
<asp:BoundField HeaderText="Unit Cost" DataField="Product_Price" ItemStyle-HorizontalAlign="Left" HeaderStyle-BackColor="#F5F5F5" HeaderStyle-ForeColor="#333" />
<asp:TemplateField  HeaderText="Unit" HeaderStyle-BackColor="#F5F5F5" HeaderStyle-ForeColor="#333">
<ItemTemplate>
<asp:Label ID="lblquantity" runat="server" Text='<%#Eval("Product_Unit") %>' Font-Bold="true"/>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px"></ItemStyle>
<FooterTemplate>
<asp:Label ID="lbltxttotal" runat="server" Text="Total" Font-Bold="true" Font-Size="Large" />
</FooterTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Amount" HeaderStyle-BackColor="#F5F5F5" HeaderStyle-ForeColor="#333">
<ItemTemplate>
<asp:Label ID="lblamount" runat="server" Text='<%# Eval("Total_Price") %>' Font-Bold="true"/>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px"></ItemStyle>
<FooterTemplate>
<asp:Label ID="lblTotal" runat="server" Font-Bold="true" Font-Size="Large" />
</FooterTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>
</div>
</div>
</div>
</form>
<div id="footer">
            <div class="footer-bottom">
                <div class="container">
                    <div class="row text-center">
                        <p style="color:white;font-size:small;letter-spacing:3px">Copyright © 2017 BTsoftnet Services. All rights reserved.</p>
                    </div>
                </div>
            </div>
</div>
</body>
</html>
