<%@ Page Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="OrderHistory.aspx.cs" Inherits="MyBazarUser_OrderHistory" Title="BTbasket|My Orders" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <asp:HiddenField ID="HiddenMobile" runat="server" />
        </div>
        <div class="col-md-6 col-sm-6">
            <ol class="breadcrumb">
               <li><a href="account">Home</a></li>
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
    
    <div  class="row">
    <div class="col-md-1">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" CssClass="table table-hover" GridLines="Both">
    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
    <Columns>

    <asp:TemplateField HeaderText="ORDER LIST" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
        <ItemTemplate>
            <p>Order ID :<strong><asp:Label ID="lbloid" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label></strong></p>
            <p>Total :<strong><asp:Label ID="Label1" runat="server" Text='<%#Eval("Amount") %>'></asp:Label></strong></p>
            Date :<strong><asp:Label ID="Label2" runat="server" Text='<%#Eval("Order_Date") %>'></asp:Label></strong>
            Status :<strong><asp:Label ID="Label3" runat="server" Text='<%#Eval("Order_Status") %>'></asp:Label></strong>
        </ItemTemplate>
    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="DETAILS" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White" HeaderStyle-Width="40px">
        <ItemTemplate>
    <asp:hyperlink id="hyp1" runat="server" navigateurl='<%# "orderdetails?ID=" + Eval("Order_Id")%>' text="DETAILS" CssClass="btn btn-success btn-sm btn-block" Target="_blank" />
        </ItemTemplate>
        <ItemStyle Width="50px" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="BILL" HeaderStyle-BackColor="#20B164" HeaderStyle-ForeColor="White">
    <ItemTemplate>
    <asp:hyperlink id="hyp1" runat="server" navigateurl='<%# "~/Admin/Invoice.aspx?ID=" + Eval("Order_Id")%>' Target="_blank" text="Invoice" Font-Bold="true"/>
    </ItemTemplate>
    <ItemStyle HorizontalAlign="left" VerticalAlign="Bottom" Width="40px"></ItemStyle>
    </asp:TemplateField>
    </Columns>
    
    </asp:GridView>
    </div>
  </div> 
</div>
</asp:Content>

