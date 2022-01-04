<%@ Page Title="" Language="C#" MasterPageFile="~/MasterGrocery.master" AutoEventWireup="true" CodeFile="Grocery.aspx.cs" Inherits="MyBazarUser_Grocery" 
    MetaKeywords="Fastest grocery delivery in bhubaneswar , Online grocey in bhubaneswar,grocery shopping bhubaneswar,Best grocery in bhubaneswar,best grocery shopping in india ,nearby grocery delivery in bhubaneswar "
MetaDescription="Buy grocery products online in best price at btbasket.com" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="row">
    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
<ol class="breadcrumb">
<li><a href="pc">Home</a></li>
<li class="active">ProductList</li>
</ol>
</div>

<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12" style="display:none;">
<asp:LinkButton ID="lbtcart" runat="server" href="my-cart" CssClass="btn btn-success btn-sm">
VIEW CART  <asp:Label ID="Label1" runat="server" CssClass="cartcount" Visible="true" Text="0"></asp:Label></asp:LinkButton>

            <asp:HiddenField ID="HiddenProductName" runat="server"/>
            <asp:HiddenField ID="HiddenBrandName" runat="server"/>
            <asp:HiddenField ID="HiddenCatagoryName" runat="server"/>
            <asp:HiddenField ID="HiddenBrand" runat="server" />
            <asp:HiddenField ID="HiddenSearch" runat="server" />
            <asp:Label ID="LblItemName" runat="server" Visible="false"></asp:Label>
            <asp:Panel ID="PanelAdd" runat="server" Visible="false">
            <div class="alert alert-success" id="success-alert">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Item Added....
        </div></asp:Panel>
</div>
    <div class="col-sm-12">
<asp:Panel ID="PanelAlert" runat="server" Visible="false">
<div class="alert alert-danger">
<h4 style="text-align:center">Sorry,Product Is Currently Not Available</h4>
</div>
</asp:Panel>
</div>
</div>

<div class="row">

        <div class="col-sm-3 filter-column">
        <asp:DropDownList ID="DdlSort" runat="server" AutoPostBack="true" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlSort_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div class="col-sm-3 filter-column">
        <asp:DropDownList ID="DdlBrand" runat="server" AutoPostBack="true" CssClass="dropdownfilter"  OnSelectedIndexChanged="DdlBrand_SelectedIndexChanged"></asp:DropDownList>
        </div>   
        <div class="col-sm-3 filter-column">
        <asp:DropDownList ID="DdlPacket" runat="server" AutoPostBack="true" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlPacket_SelectedindexChanged" ></asp:DropDownList>
        </div>

</div>


 <div class="row prdct_row">
     <div class="prdct_row">
<asp:Label ID="LblMsg" runat="server" Font-Size="20px" Visible="false" Text="Item Is Out Of Stock..."></asp:Label>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatLayout="Flow" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"
OnItemCreated="DataList1_ItemCreated">

<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />     

    

<ItemTemplate>

<div class="product-image-wrapper">
<div class="single-products">
<div class="productinfo text-center">
<%--<asp:Label ID="LblMargin" runat="server" CssClass="productmargin" Text='<%#Eval("Product_Margin") %>'></asp:Label>
<asp:Label ID="Lblpercentage" runat="server" CssClass="productmargin" Text="% OFF"></asp:Label>--%>
<asp:Panel ID="paneloffer" runat="server">
<p> <asp:Label ID="LblOffer" runat="server"  Text='<%#Eval("Product_Offer") %>'></asp:Label></p>
</asp:Panel>
<asp:Image ID="ImageButton1" runat="server" ImageAlign="Middle" CssClass="imgcartitem" ImageUrl='<%# Eval("Product_Image")%>' AlternateText="btbasket.com" />

<div class="lblbrand">
    <asp:Label ID="LblBrand"  runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Brand")%>'></asp:Label>
</div>

<asp:Label ID="Lblpid" runat="server" Font-Bold="true" ForeColor="#333" Visible="false" Text='<%#Eval("Product_Id") %>'></asp:Label>

<p class="text2">
    <asp:Label ID="LblDesc" runat="server"  ForeColor="#17202a" Font-Bold="true" Text='<%#Eval("Product_Description") %>'></asp:Label>: (<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="small" Text='<%#Eval("Product_Quantity") %>'></asp:Label>)

</p>
<div class="divitemalign">
<div>
<p class="ratetext">
MRP : <asp:Label ID="LblMrp" runat="server" Font-Size="small" ForeColor="#333" Font-Strikeout="true" Text='<%#Eval("Product_MRP") %>'></asp:Label>
<asp:Label ID="LblPrice" runat="server" CssClass="lblround" Text='<%#Eval("Product_Price") %>'></asp:Label>
</p>
<div>
    <asp:Label ID="LblProductName" runat="server" ForeColor="#C70039" Visible="false" Font-Bold="false" Text='<%#Eval("Product_Name") %>'></asp:Label></div>
<div>
<div class="input-group quantity_box">
Qty: <asp:TextBox ID="TxtNum" runat="server" placeholder="1" CssClass="OtyTextbox" MaxLength="10" TextMode="Number" ></asp:TextBox>
<asp:LinkButton ID="BtnAdd" runat="server" CommandName="AddtoCart" CssClass="add_btn" OnClientClick="ChangeCartCount()"><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart"></span>ADD</asp:LinkButton>
</div>
</div>
<div>
<asp:RegularExpressionValidator ID="RegularExpNum" runat="server" ErrorMessage="Only Numbers" Font-Bold="false" Font-Size="X-Small" ControlToValidate="TxtNum" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
<asp:Label ID="LblMsg" runat="server" Text="ITEM ADDED | " CssClass="itemaddmsg" Visible="false"></asp:Label> 
<asp:LinkButton ID="lnkdlview" runat="server" CssClass="landing-link" href="my-cart" Visible="false">VIEW CART</asp:LinkButton>
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
</div>
     </div>
</ContentTemplate>  
</asp:UpdatePanel>  
</asp:Content>

