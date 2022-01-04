<%@ Page Title="MyBazar.com|Product" Language="C#" MasterPageFile="~/MasterGrocery.master" AutoEventWireup="true" CodeFile="MyOffer.aspx.cs" Inherits="MyBazarUser_MyOffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="row">
<div class="col-md-6 pull-left">
<ol class="breadcrumb">
<li><a href="Home1.aspx">Home</a></li>
<li class="active">ProductList</li>
</ol>
</div>
<div class="col-md-6 pull-right">
 <asp:Button ID="BtnCart" runat="server" class="btn btn-danger btn-md" OnClick="BtnCart_Click"/>
</div>
    </div>
    <div class="col-md-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Sorry we have not added this product in our cart...
        </div>
        </asp:Panel>
        </div>
    <div class="row">
        <div class="col-md-3">
            <asp:HiddenField ID="HiddenProductName" runat="server" />
        </div>
        <div class="col-md-3">
            
        </div>
         <div class="col-md-6">

        </div>
    </div>
    
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatLayout="Flow"
 RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"
OnItemCreated="DataList1_ItemCreated">

<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
<ItemTemplate>
<div class="col-sm-3">
<div class="product-image-wrapper">
<div class="single-products">
<div class="productinfo text-center">
<p><asp:Label ID="LblOffer" runat="server" Font-Bold="false" Text='<%#Eval("Product_Offer") %>'></asp:Label></p>
<asp:Image ID="ImageButton1" runat="server" ImageAlign="Middle" Height="100px" BackColor="Transparent" Width="110px" ImageUrl='<%# Eval("Product_Image")%>' AlternateText="btbasket/img" /><br />
<asp:Label ID="LblBrand" runat="server" Font-Bold="true" ForeColor="Gray"  Text='<%#Eval("Product_Brand") %>'></asp:Label>
<p><asp:Label ID="LblDesc" runat="server" ForeColor="#424242" Font-Bold="true" Text='<%#Eval("Product_Description") %>'></asp:Label></p>
<p>
<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="medium" Text='<%#Eval("Product_Quantity") %>'></asp:Label></p>
<p>
<h5><asp:Label ID="LblMrp" runat="server" Font-Size="small" ForeColor="#78612D" Font-Strikeout="true" Text='<%#Eval("Product_MRP") %>'></asp:Label>
<asp:Image ID="Imgrs" runat="server" ImageUrl="~/images/home/rupee-symbol.jpg" width="18px" height="18px" BackColor="Transparent" />
<asp:Label ID="LblPrice" runat="server" CssClass="lblround" Text='<%#Eval("Product_Price") %>'></asp:Label></h5>
</p>
<p><asp:Label ID="LblProductName" runat="server" ForeColor="#C70039" Visible="false" Font-Bold="false" Text='<%#Eval("Product_Name") %>'></asp:Label>

</p>
<p><b>Qty:</b><asp:TextBox ID="TxtNum" runat="server" placeholder="1" ForeColor="black" Font-Bold="true" Width="20px" Height="20px" BorderColor="Green" BorderWidth="1px"></asp:TextBox>
<asp:Button ID="BtnAdd" runat="server" CommandName="AddtoCart" CssClass="btn btn-success btn-sm" Text="ADD TO BASKET"/>
</p>

<p>
<asp:RegularExpressionValidator ID="RegularExpNum" runat="server" ErrorMessage="Only Numbers" Font-Bold="true" ForeColor="Red" ControlToValidate="TxtNum" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
<asp:Label ID="LblMsg" runat="server" Text="Item Added" ForeColor="Red" Font-Bold="false" Font-Size="Smaller" Visible="false"></asp:Label>
</p>
</div>
</div>
</div>
</div>
</ItemTemplate>
<SelectedItemStyle BackColor="white" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</ContentTemplate>
</asp:UpdatePanel>    
</asp:Content>

