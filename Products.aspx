<%@ Page Title="" Language="C#" MasterPageFile="~/MasterGrocery.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="MyBazarUser_Products" MetaKeywords="online grocery delivery bhubaneswar,online grocery in bhubaneswar, online shopping in bhubaneswar, online supermarket in bhubaneswar, home delivery bhubaneswar, door service bhubaneswar, online delivery service in bhubaneswar, best online delivery service in bhubaneswar, online grocery in odisha, online grocery delivery service in odisha, online home delivery odisha, ecoomerce bhubaneswar, online shopping cart bhubaneswar,best online grocery in india,online grocery delivery in india "
MetaDescription="btbasket is ready all day for online delivery of grocery & staple item, health beauty & baby supplies at wholesale price in effective way at your home."%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="row top-buffer"></div><div class="row top-buffer"></div><div class="row top-buffer"></div><div class="row top-buffer"></div>
<div class="row">
<div class="col-md-3 pull-left">
<%--<asp:Button ID="BtnCart" runat="server" Visible="true" class="btn btn-dangercart btn-md" OnClick="BtnCart_Click"/>--%>           
</div>
<div class="col-md-4 pull-left">
<ol class="breadcrumb">
<li><a href="pc">Home</a></li>
<li class="active">ProductList</li>
</ol>
</div>
<div class="col-md-4"></div>
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
            <asp:HiddenField ID="HiddenCatagoryName" runat="server" />
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-xs-6 filter-columncategory">
                    <asp:DropDownList ID="Ddlbrand" AutoPostBack="true" runat="server" CssClass="dropdownfilter" OnSelectedIndexChanged="Ddlbrand_SelectedIndexChanged"></asp:DropDownList><br /><br />
                </div>
                <div class="col-xs-6 filter-columncategory">
                    <asp:DropDownList ID="DdlProduct" AutoPostBack="true" runat="server" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlProduct_SelectedIndexChanged"></asp:DropDownList><br /><br />
                </div>
            </div>
            
            
        </div>
         <div class="col-md-3">

        </div>
    </div>
<div class="container">
    <div class="row">
        <div class ="col-xs-10">
            
        </div>
    </div>
</div>
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10" style="background-color:#fff">
<asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatLayout="Flow" CellPadding="1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"
OnItemCreated="DataList1_ItemCreated">
<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
 <ItemTemplate>
<div class="col-lg-3 col-sm-6 col-xs-6 col-md-4">
<div class="product-image-wrapper">
<div class="single-products">
<div class="productinfo text-center">
<asp:Panel ID="paneloffer" runat="server">
<p> <asp:Label ID="LblOffer" runat="server"  Text='<%#Eval("Product_Offer") %>'></asp:Label></p>
</asp:Panel>
<asp:Image ID="ImageButton1" runat="server" ImageAlign="Middle" CssClass="imgcartitem" ImageUrl='<%# Eval("Product_Image")%>' AlternateText="btbasket/img" /><br />
<asp:Label ID="LblBrand" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Brand") %>'></asp:Label>
<asp:Label ID="Lblpid" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Id") %>'></asp:Label>
<p class="text2"><asp:Label ID="LblDesc" runat="server"  ForeColor="#17202a" Text='<%#Eval("Product_Description") %>'></asp:Label>:(<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="small" Text='<%#Eval("Product_Quantity") %>'></asp:Label>)</p>
<div style="background:#eee !important;padding-left:5px;padding-right:5px;padding-bottom:1px;text-align:left;height:93px">
<div class="itemalign">
<p>
<b>MRP:  Rs</b><asp:Label ID="LblMrp" runat="server" Font-Size="small" ForeColor="#00b545" Font-Strikeout="true" Text='<%#Eval("Product_MRP") %>'></asp:Label>&nbsp&nbsp&nbsp
<asp:Label ID="LblPrice" runat="server" CssClass="lblround" Text='<%#Eval("Product_Price") %>'></asp:Label>
</p>
<p><asp:Label ID="LblProductName" runat="server" ForeColor="#C70039" Visible="false" Font-Bold="false" Text='<%#Eval("Product_Name") %>'></asp:Label></p>
<p>
<div class="input-group">
Qty :<asp:TextBox ID="TxtNum" runat="server" placeholder="1" CssClass="OtyTextbox" MaxLength="10" TextMode="Number"></asp:TextBox>
<asp:LinkButton ID="BtnAdd" runat="server" CommandName="AddtoCart" CssClass="btn btn-success btn-sm"><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart"></span>ADD</asp:LinkButton>
</div></p>
<p>
<asp:RegularExpressionValidator ID="RegularExpNum" runat="server" ErrorMessage="Only Numbers" Font-Bold="true" ForeColor="Red" ControlToValidate="TxtNum" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
<asp:Label ID="LblMsg" runat="server" Text="ITEM ADDED | " CssClass="itemaddmsg" Visible="false"></asp:Label> 
<asp:LinkButton ID="lnkdlview" runat="server" CssClass="landing-link" href="my-cart" Visible="false">VIEW CART</asp:LinkButton>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
 </ItemTemplate>
 <SelectedItemStyle BackColor="white" Font-Bold="True" ForeColor="White" />
</asp:DataList>
    </div>
    <div class="col-md-1"></div>
</div>
</ContentTemplate>  
</asp:UpdatePanel>
</asp:Content>

