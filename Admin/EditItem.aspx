<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterEntry.master" AutoEventWireup="true" CodeFile="EditItem.aspx.cs" Inherits="MyBazarAdmin_EditItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Data Updated Successfully.......
        </div>
        </asp:Panel>
        </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <a href="AddItem.aspx" runat="server">Add Product</a>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label ID="LblProduct" runat="server" Text="Product Name" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlProduct" runat="server" AutoPostBack="True" CssClass="selectpicker" data-style="btn-primary" OnSelectedIndexChanged="DdlProduct_SelectedIndexChanged"></asp:DropDownList>
                </div>
                 
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label ID="LblBrandname" runat="server" Text="Brand Name" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlBrand" runat="server" AutoPostBack="True" CssClass="selectpicker" data-style="btn-primary" ></asp:DropDownList>
                </div>
            </div>
            <div class="col-md-2">
                <asp:Button ID="BtnShow" runat="server" CssClass="btn btn-danger" Text="Show Data" />
            </div>
            <div class="col-md-3"></div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 text-center">
                
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="512px">
<Columns>
<asp:TemplateField HeaderText="Control" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White">
    <ItemTemplate>
        <asp:Button ID="BtnEdit" runat="server" Text="Edit" CommandName="Edit" />
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Button ID="BtnUpdate" runat="server" Text="Update" CommandName="Update" />
        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
    </EditItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="Name" HeaderStyle-BackColor="#20b164" HeaderStyle-ForeColor="White" DataField="Product_Name" >
<HeaderStyle BackColor="#20B164" ForeColor="White"></HeaderStyle></asp:BoundField>
<asp:BoundField HeaderText="Brand" HeaderStyle-BackColor="#20b164" HeaderStyle-ForeColor="White" DataField="Product_Brand" >
<HeaderStyle BackColor="#20B164" ForeColor="White"></HeaderStyle></asp:BoundField>
<asp:TemplateField HeaderText="Product-Quantity">

        <ItemTemplate>
            <asp:Label ID="LblQty" runat="server" Text='<%# Bind("Product_Quantity") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TxtQty" runat="server" Text='<%# Bind("Product_Quantity") %>'></asp:TextBox>
        </EditItemTemplate>
        <HeaderStyle BackColor="#20B164" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Product-MRP">

        <ItemTemplate>
            <asp:Label ID="LblMrp" runat="server" Text='<%# Bind("Product_MRP") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TxtMrp" runat="server" Text='<%# Bind("Product_MRP") %>'></asp:TextBox>
        </EditItemTemplate>
        <HeaderStyle BackColor="#20B164" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Display-Price">

        <ItemTemplate>
            <asp:Label ID="LblPrice" runat="server" Text='<%# Bind("Product_Price") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TxtPrice" runat="server" Text='<%# Bind("Product_Price") %>'></asp:TextBox>
        </EditItemTemplate>
        <HeaderStyle BackColor="#20B164" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Description">

        <ItemTemplate>
            <asp:Label ID="LblDesc" runat="server" Text='<%# Bind("Product_Description") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TxtDesc" runat="server" Text='<%# Bind("Product_Description") %>'></asp:TextBox>
        </EditItemTemplate>
        <HeaderStyle BackColor="#20B164" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Offer">

        <ItemTemplate>
            <asp:Label ID="LblOffer" runat="server" Text='<%# Bind("Product_Offer") %>'></asp:Label>
        </ItemTemplate>

        <EditItemTemplate>
            <asp:TextBox ID="TxtOffer" runat="server" Text='<%# Bind("Product_Offer") %>'></asp:TextBox>
        </EditItemTemplate>
        <HeaderStyle BackColor="#20B164" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField>
    <ItemTemplate>
        <asp:Label ID="LblId" runat="server" Visible="false" Text='<%# Bind("Product_Id") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>

