<%@ Page Title="Admin Home|btbasket.com" Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="MyBazarAdmin_AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<%--<div class="row top-buffer"></div><div class="row top-buffer"></div>--%>
<div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenDate" runat="server" />
        </div>
        <div class="row">
        <div class="col-md-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <asp:Label ID="Lblmsg" runat="server"></asp:Label>
        </div>
        </asp:Panel>
        </div>
    </div>
    </div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
<div class="panel panel-success">
<div class="panel-heading">
<div class="panel-title">
                                   <h3>Add New Items...</h3>
                               </div>
</div>
<div class="panel-body">
                     <div class="form form-inline">
                <asp:Panel ID="PanelDuplicate" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            The Item Is Already Exist!....
        </div>
        </asp:Panel>
                 <div class="form-group">
                    <asp:Label ID="LblName" runat="server" Text="Category" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="ddlcategory" runat="server" CssClass="selectpicker" data-style="btn-primary"  AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" ></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblProduct" runat="server" Text="Product Name" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlProduct" runat="server" AutoPostBack="True" CssClass="selectpicker" data-style="btn-primary" OnSelectedIndexChanged="DdlProduct_SelectedIndexChanged" ></asp:DropDownList>
                    <asp:TextBox ID="TxtPname" runat="server" Visible="false"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblBrandname" runat="server" Text="Brand Name" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlBrand" runat="server" AutoPostBack="True" CssClass="selectpicker" data-style="btn-primary" ></asp:DropDownList>
                    <asp:TextBox ID="TxtPbrand" runat="server" Visible="false"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblQuantity" runat="server" Text="Product Quantity" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlQuantity" runat="server" CssClass="selectpicker" data-style="btn-primary"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblMRP" runat="server" Text="MRP" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="Txtmrp" CssClass="form-control" runat="server" placeholder="Enter MRP Here" OnTextChanged="Txtmrp_TextChanged" AutoPostBack="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblMargin" runat="server" Text="Margin" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlMargin" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DdlMargin_SelectedIndexChanged" ></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblPrice" runat="server" Text="Price" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtPrice" CssClass="form-control" runat="server" placeholder="Enter Price Here"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblImage" runat="server" Text="Upload Image" Font-Bold="true"></asp:Label>
                    <asp:FileUpload ID="ImgFileUpload" runat="server"/>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblBrand" runat="server" Text="Product Brand" Visible="false" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtBrand" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
                    
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblDesc" runat="server" Text="Product Description" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtDesc" CssClass="form-control" runat="server" placeholder="Write Desc..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Description" ControlToValidate="TxtDesc"></asp:RequiredFieldValidator>
                    
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblOffer" runat="server" Text="Product Offer" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtOffer" CssClass="form-control" runat="server" placeholder="Write Offer..."></asp:TextBox>               
                    <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Offer length must be between 28 characters" ControlToValidate="TxtOffer" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{2,28}$" />

                </div>
                <div class="form-group">
                    <asp:Label ID="Lblstock" runat="server" Text="In Stock" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtStock" CssClass="form-control" runat="server" placeholder="Yes OR No..."></asp:TextBox>               
                    <asp:RequiredFieldValidator ID="RequiredFieldStock" runat="server" ErrorMessage="Write Stock" ControlToValidate="TxtStock"></asp:RequiredFieldValidator>

                </div>
                 <div class="form-group">
                    <asp:Button ID="BtnRegister" CssClass="btn btn-success" runat="server" Text="Save Product" OnClick="BtnRegister_Click"/>
                      </div>
                     </div>  
                 </div>
</div>
</div>
<div class="col-md-1"></div>
</div>
</asp:Content>

