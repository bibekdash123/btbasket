<%@ Page Language="C#" MasterPageFile="~/Admin/MyBazar.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="MyBazarAdmin_AddProduct" Title="Add Product Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #leftright
        {
            height: 297px;
        }
        .textarea
        {}
        .ajax__myTab
        {}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<div>
<cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Width="100%" 
        Height="600px" CssClass="ajax__myTab">
<cc1:TabPanel ID="PanelAddProduct" runat="server">
<HeaderTemplate>Add Product</HeaderTemplate>
<ContentTemplate>
<div id="divcontent">
<div class="left-column">


<asp:HiddenField ID="HiddenDate" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlcategory" runat="server" CssClass="dropdown1" 
        Height="30px" Width="146px" AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="TxtName" 
        runat="server" CssClass="textarea" Height="30px" Width="273px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Image:<asp:FileUpload ID="ImgFileUpload" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Brand:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox 
        ID="TxtBrand" runat="server" CssClass="textarea" Height="29px" 
        Width="273px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="TxtDescription" runat="server" CssClass="textarea" 
        Height="30px" Width="273px"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="lblcode" runat="server" Text="ping" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblproduct_no" runat="server" ForeColor="#CC0000"></asp:Label>
    <br />
    <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Save Product" 
        Width="173px" onclick="Button1_Click" CssClass="button" />
    <br />
    <br />
    <asp:Label ID="LblMsg" runat="server" Text="Image Size Exceed The Limit Of 1MB" 
        Visible="False" ForeColor="Red"></asp:Label>
    <br />
    </div>
<div class="right-column">
Product Name:&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DdlProduct" runat="server" AutoPostBack="True" CssClass="dropdown1">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <br />
    <br />
    <br />
                Product Quantity:<asp:DropDownList 
        ID="DdlQuantity" runat="server" CssClass="dropdown1" Height="31px" Width="146px">
                </asp:DropDownList>
            <br />
    <br />
    <br />
    <br />
                Product Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox 
        ID="TxtPrice" runat="server"></asp:TextBox>
            <br />
    <br />
                <asp:Label ID="LblId" runat="server" Visible="False"></asp:Label>
            &nbsp;<asp:Label ID="LblProductname" runat="server"></asp:Label>
            <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnPrice" runat="server" Text="Save Price" 
                    onclick="BtnPrice_Click" CssClass="button" Width="148px" />
            </div>
</div>
</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel ID="PanelAddCategory" runat="server">
<HeaderTemplate>Manage Products</HeaderTemplate>
<ContentTemplate>
<div>
    <asp:Panel ID="Panel1" runat="server">

    </asp:Panel>
</div>   

</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel ID="Porders" runat="server">
<HeaderTemplate>View Orders</HeaderTemplate>
<ContentTemplate>Pending orders</ContentTemplate>
</cc1:TabPanel>
<cc1:TabPanel ID="Musers" runat="server">
<HeaderTemplate>Manage User</HeaderTemplate>
<ContentTemplate>Add New User</ContentTemplate>
</cc1:TabPanel>
</cc1:TabContainer>
</div>
</asp:Content>

