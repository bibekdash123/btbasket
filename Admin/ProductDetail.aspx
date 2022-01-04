<%@ Page Title="Edit Product | btbasket" Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="MyBazarAdmin_ProductDeatil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="row top-buffer"></div>
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
<%--<asp:TextBox ID="TxtDesc" runat="server" CssClass="editproductadmin" placeholder="Description" Visible="false"></asp:TextBox><br />
<asp:TextBox ID="Txtweight" runat="server" CssClass="editproductadmin" placeholder="Weight"></asp:TextBox>--%>
    </div>
    
    <div class="col-md-3">
<%--<asp:TextBox ID="Txtmrp" runat="server" CssClass="editproductadmin" placeholder="MRP"></asp:TextBox>--%>
    </div>
    <div class="col-md-3">
<%--<asp:TextBox ID="Txtprice" runat="server" CssClass="editproductadmin" placeholder="btbasket price"></asp:TextBox>--%>
    </div>
    <div class="col-md-3">
<%--<asp:TextBox ID="TxtOffer" runat="server" CssClass="editproductadmin" placeholder="Offer"></asp:TextBox>
<asp:TextBox ID="Txtstock" runat="server" CssClass="editproductadmin" placeholder="In Stock.."></asp:TextBox>--%>

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
                    <asp:DropDownList ID="Ddlbrand" AutoPostBack="true" runat="server" CssClass="dropdownfilter" OnSelectedIndexChanged="Ddlbrand_SelectedIndexChanged"></asp:DropDownList><br /><br />
                </div>
                <div class="col-sm-6">
                    <asp:DropDownList ID="DdlProduct" AutoPostBack="true" runat="server" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlProduct_SelectedIndexChanged"></asp:DropDownList><br /><br />
                </div>
            </div>  
        </div>
         <div class="col-md-4">
<%--<asp:Button ID="BtnUpdate" runat="server" CssClass="btn btn-success" Text="UPDATE" OnClick="BtnUpdate_Click" />--%>
        </div>
    </div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10 pull-left">
<asp:Button ID="BtnBulkUpdate" runat="server" Text="UPDATE" CssClass="btn btn-success btn-md" OnClick="BtnBulkUpdate_Click" />
<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Both" OnRowCommand="GridView4_RowCommand">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<%--<asp:ButtonField ButtonType="Button" CommandName="Select" Text="EDIT"   />--%>
<asp:TemplateField HeaderText="Name" HeaderStyle-Width="40px">
    <ItemTemplate>
<h6>PRODUCT CODE : <asp:Label ID="LblPid" runat="server" Font-Bold="false" ForeColor="#333" Text='<%#Bind("Product_Id") %>'></asp:Label></h6>
<b>NAME : </b><asp:Label ID="LblName" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Name") %>'></asp:Label><br />
<b>BRAND : </b><asp:Label ID="LblBrand" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Brand") %>'></asp:Label>
<%--:(<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="small" Text='<%#Eval("Product_Quantity") %>'></asp:Label>)<br />
<b>ABOUT :</b><asp:Label ID="LblDesc" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Description") %>'></asp:Label><br />
<b>MRP : </b><asp:Label ID="LblMrp" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_MRP") %>'></asp:Label><br />
<b>OUR PRICE : </b><asp:Label ID="LblPrice" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Price") %>'></asp:Label><br />
<b>OFFER :</b><asp:Label ID="LblOffer" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Offer") %>'></asp:Label><br />
<b>STOCK :</b><asp:Label ID="Lblstock" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("InStock") %>'></asp:Label>--%>
    </ItemTemplate><ItemStyle Width="40px" />
<ItemStyle HorizontalAlign="Left" />
</asp:TemplateField>
<asp:TemplateField HeaderText="MRP" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>MRP : </b><asp:TextBox ID="TxtMrp" runat="server" Font-Bold="true" Width="22px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("Product_MRP") %>'></asp:TextBox>
    </ItemTemplate>
<ItemStyle Width="12px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="PRICE" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>Price : </b><asp:TextBox ID="TxtPrice" runat="server" Font-Bold="true" Width="22px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("Product_Price") %>'></asp:TextBox>
    </ItemTemplate><ItemStyle Width="12px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="OFFER" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>Offer : </b><asp:TextBox ID="TxtOffer" runat="server" Font-Bold="true" Width="22px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("Product_Offer") %>'></asp:TextBox>
    </ItemTemplate><ItemStyle Width="12px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="STOCK" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>Stock : </b><asp:TextBox ID="TxtInStock" runat="server" Font-Bold="true" Width="23px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("InStock") %>'></asp:TextBox>
    </ItemTemplate>
    <ItemStyle Width="12px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="WEIGHT" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>Qty : </b><asp:TextBox ID="TxtQty" runat="server" Font-Bold="true" Width="39px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("Product_Quantity") %>'></asp:TextBox>
    </ItemTemplate><ItemStyle Width="12px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="DESC" HeaderStyle-Width="12px">
    <ItemTemplate>
<b>Des : </b><asp:TextBox ID="TxtDesc" runat="server" Font-Bold="true" Width="120px" BackColor="#00b545" ForeColor="white" Text='<%#Bind("Product_Description") %>'></asp:TextBox>
    </ItemTemplate><ItemStyle Width="12px" />
</asp:TemplateField>
</Columns>   
</asp:GridView>
    </div>
    <div class="col-md-1">
        
    </div>
</div>
</asp:Content>

