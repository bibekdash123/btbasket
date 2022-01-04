<%@ Page Title="Edit Product | btbasket" Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="Uerfeedback.aspx.cs" Inherits="MyBazarAdmin_Userfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="row top-buffer"></div><div class="row top-buffer"></div><div class="row top-buffer"></div>
<div class="row">
<div class="col-md-4 pull-left"></div>
<div class="col-md-4 pull-left">
<ol class="breadcrumb">
<li><a href="AddItem.aspx">Home</a></li>
<li class="active">ProductDeatil</li>
</ol>
</div>
<div class="col-md-4"></div>
</div>
<div class="row">
    <div class="col-md-3 push-left">
<asp:HiddenField ID="Hiddenpid" runat="server" />
<asp:TextBox ID="TxtDesc" runat="server" CssClass="editproductadmin" placeholder="Description" Visible="false"></asp:TextBox><br />
<asp:TextBox ID="Txtweight" runat="server" CssClass="editproductadmin" placeholder="Weight"></asp:TextBox>
    </div>
    <%--<div class="col-md-2 pull-left">

    </div>--%>
    <div class="col-md-3">
<asp:TextBox ID="Txtmrp" runat="server" CssClass="editproductadmin" placeholder="MRP"></asp:TextBox>
    </div>
    <div class="col-md-3">
<asp:TextBox ID="Txtprice" runat="server" CssClass="editproductadmin" placeholder="btbasket price"></asp:TextBox>
    </div>
    <div class="col-md-3">
<asp:TextBox ID="TxtOffer" runat="server" CssClass="editproductadmin" placeholder="Offer"></asp:TextBox>

    </div>
    <%--<div class="col-md-2">
        
    </div>--%>
</div>
<div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
<div class="row">
                <div class="col-sm-6">
                    <asp:DropDownList ID="Ddlbrand" AutoPostBack="true" runat="server" CssClass="dropdownfilter" ></asp:DropDownList><br /><br />
                </div>
                <div class="col-sm-6">
                    <asp:DropDownList ID="DdlProduct" AutoPostBack="true" runat="server" CssClass="dropdownfilter" ></asp:DropDownList><br /><br />
                </div>
            </div>  
        </div>
         <div class="col-md-4">
<asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-success" Text="UPDATE" />
        </div>
    </div>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Both">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:ButtonField ButtonType="Button" CommandName="Select" Text="EDIT"   />
<asp:TemplateField HeaderText="Name">
    <ItemTemplate>
<h4>PRODUCT CODE : <asp:Label ID="LblPid" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Id") %>'></asp:Label></h4>
<b>NAME : </b><asp:Label ID="LblName" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Name") %>'></asp:Label><br />
<b>BRAND : </b><asp:Label ID="LblBrand" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Brand") %>'></asp:Label>
:(<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="small" Text='<%#Eval("Product_Quantity") %>'></asp:Label>)<br />
<b>ABOUT :</b><asp:Label ID="LblDesc" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Description") %>'></asp:Label><br />
<b>MRP : </b><asp:Label ID="LblMrp" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_MRP") %>'></asp:Label><br />
<b>OUR PRICE : </b><asp:Label ID="LblPrice" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Price") %>'></asp:Label><br />
<b>OFFER :</b><asp:Label ID="LblOffer" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Offer") %>'></asp:Label>
    </ItemTemplate>
<ItemStyle HorizontalAlign="Left" />
</asp:TemplateField>
</Columns>   
</asp:GridView>
    </div>
    <div class="col-md-3">
        
    </div>
</div>
</asp:Content>

