<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vendor-Invoice.aspx.cs" Inherits="MyBazarAdmin_VendorInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Online Grocery Shopping</title>
    <link rel="Stylesheet" href="../CSS/mybazar.css" type="text/css" />
    <link rel="Stylesheet" href="../CSS/styles.css" type="text/css" />
    <link rel="Stylesheet" href="../CSS/new css.css" type="text/css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet"/>
    <link href="../css/prettyPhoto.css" rel="stylesheet"/>
    <link href="../css/price-range.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
	<link href="../css/main1.css" rel="stylesheet"/>
	<link href="../css/responsive.css" rel="stylesheet"/>   
    <link rel="shortcut icon" href="../images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
<div class="row">
    <div class="col-md-4">
<asp:Image ID="Image1" runat="server" ImageUrl="~/newlogo.png" AlternateText="btbasket" />
    </div>
    <div class="col-md-8 pull-left">
<h3>Vendor Invoice</h3>
<asp:Button ID="Btnprint" runat="server" BorderStyle="None" Text="PRINT" onclientclick="javascript:window.print();" OnClick="Btnprint_Click" />
    </div>
</div>     
<div class="text-center">
           
        </div>
<div class="row top-buffer1">
<div class="col-md-2"></div>
<div class="col-md-4">
<div class="panel panel-default">
    <div class="panel-heading">
<h4>Shipped To:</h4>
    </div>
<div class="panel-body">
<b>ORDER NO:</b><b><asp:Label ID="LblOrderid" runat="server" style="font-size:medium"></asp:Label></b>
<h5><asp:Label ID="LblName" runat="server" style="font-size:smaller"></asp:Label></h5>
<h5><asp:Label ID="LblMobile" runat="server" style="font-size:smaller"></asp:Label></h5>
<h5><asp:Label ID="LblAddress" runat="server" style="font-size:smaller"></asp:Label></h5>
<h5><asp:Label ID="LblDate" runat="server" style="font-size:smaller"></asp:Label></h5>
</div>
</div>
</div>
<div class="col-md-4">
<div class="panel panel-default">
<div class="panel-heading">
<h4>Shipped By:</h4>
    </div>
<div class="panel-body">      
<h5>WWW.btbasket.com</h5>
<h6>Plot No-891/935,Nayapalli</h6>
<h6>Bhubaneswar-751006</h6>
<h6>7077998587,9040450505</h6>
<h6>info@btbasket.com</h6>
    </div>
</div>
<div class="col-md-2"></div>
</div>
<div class="col-md-2"></div> 
</div>
    </div>
<div class="row top-buffer1">
<div class="col-md-3">
            <asp:HiddenField ID="HiddenYear" runat="server" />
            <asp:HiddenField ID="HiddenMonth" runat="server" />
        </div>
<div class="col-md-8">
<div class="pull-left">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="small" Height="100px" CssClass="table table-striped" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" ShowFooter="false">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F5F5F5"/>
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Transparent" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Transparent"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-Width="5%" HeaderStyle-BackColor="#F5F5F5">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="5px" BackColor="Transparent"></ItemStyle>
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
<asp:TemplateField HeaderText="Item Quantity" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" HeaderStyle-Width="60px">
<ItemTemplate>
<b>Weight:</b><asp:TextBox ID="TxtWeight" runat="server" Width="35px" ForeColor="#000" BorderColor="Transparent" BackColor="Transparent" Text='<%#Eval("Product_Quantity")%>'></asp:TextBox><br />
<b>Unit:</b><asp:TextBox ID="TxtQuantity" runat="server" Width="20px" ForeColor="#000" ReadOnly="true" BorderColor="Transparent" BackColor="Transparent" Text='<%#Eval("Product_Unit")%>' AutoPostBack="true"></asp:TextBox>
</ItemTemplate>
<ItemStyle BackColor="transparent" ForeColor="#333" Width="140px" HorizontalAlign="Left" />
<HeaderStyle BackColor="#F5F5F5" ForeColor="#333" HorizontalAlign="Left" Font-Bold="true" />
</asp:TemplateField>
<%--<asp:BoundField HeaderText="Item" DataField="Product_Name" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Description" DataField="Product_Description" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Offer" DataField="Product_Offer" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Brand" DataField="Product_Brand" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Weight" DataField="Product_Quantity" ItemStyle-HorizontalAlign="Left" />
<asp:BoundField HeaderText="Unit" DataField="Product_Unit" ItemStyle-HorizontalAlign="Left" />--%>
<asp:BoundField HeaderText="Cost-Price" ItemStyle-HorizontalAlign="Left" ItemStyle-BackColor="transparent" HeaderStyle-BackColor="#F5F5F5" />
</Columns>
</asp:GridView> 
</div>   
</div>
<div class="col-md-1"></div>
    </div>
<div class="row"></div>
<div class="row"></div>
<div class="row"></div>
<div class="row">
<div class="col-md-3">

</div>
<div class="col-md-6">

</div>
<div class="col-md-3">

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
