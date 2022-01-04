<%@ Page Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="My-Order.aspx.cs" Inherits="MyBazarUser_MyOrder" Title="BTbasket|ViewKart" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
<div class="row">
        <div class="col-md-12 col-sm-12">
            <asp:HiddenField ID="HiddenId" runat="server" />
        </div>
        <div class="col-md-12 col-sm-12">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
                <li><a href="MyAccount.aspx">User-Home</a></li>
               <li class="active">OrderHistory</li>
            </ol>
        </div>
         <div class="col-md-6 col-sm-12 text-right showinmobile">
            <div class="dropdown ">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               My DashBoard
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="Myorders">MY ORDERS</a>
                <a class="dropdown-item" href="Mytransactions">MY TRANSACTIONS</a>
                <a class="dropdown-item" href="return-refund">REFUND/RETURN</a>
                <a class="dropdown-item" href="Changepassword">CHANGE PASSWORD</a>
                <a class="dropdown-item" href="LOGOUT">LOGOUT</a>
              </div>
            </div>
        </div>
    </div>
    
<div class="row">
        <div class="col-md-12 text-center">
            <asp:Button ID="BtnAdd" runat="server" Text="ADD THIS TO CART" CssClass="btn btn-success" OnClick="BtnAdd_Click" />
        </div>
        
    </div>
<div  class="row">
    <div class="col-md-2">
        <asp:HiddenField ID="HiddenMail" runat="server" />
        <asp:HiddenField ID="HiddenAmnt" runat="server" Value="200" />
        <asp:HiddenField ID="HiddenAmount" runat="server" />
        <asp:Label ID="LblOdId" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="LblCode" runat="server" Text="MYBAZ" Visible="False"></asp:Label>
        </div>
    <div class="col-md-12 col-sm-12">
            <asp:Label ID="LblMessage" runat="server" Visible="False"></asp:Label>
        <br />
<div class="table-responsive">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Horizontal" BorderColor="#20b164" BorderWidth="2px" CellSpacing="10">
    <AlternatingRowStyle HorizontalAlign="Left" VerticalAlign="Middle" BorderColor="#20b164" BorderWidth="2px"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="Name" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Name" />
<asp:BoundField HeaderText="Brand" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Brand" />
<asp:BoundField HeaderText="Quantity" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Quantity" />
<asp:BoundField HeaderText="Price" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Price" />
<asp:BoundField HeaderText="Description" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Description" />
<asp:BoundField HeaderText="Offer" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Offer" />
<asp:BoundField HeaderText="Unit" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Product_Unit" />
<asp:BoundField HeaderText="Total" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" DataField="Total_Price" />
</Columns>
    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
    </asp:GridView>
            </div>
    </div>
      </div>
     
    
</asp:Content>

