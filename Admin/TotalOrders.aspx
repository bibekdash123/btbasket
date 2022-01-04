<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="TotalOrders.aspx.cs" Inherits="MyBazarUser_TotalOrders" Title="BTbasket|Total Orders" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenId" runat="server" />
            <h2>Total Orders..</h2>
        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="AddItem.aspx">Home</a></li>
               <li class="active">OrderHistory</li>
            </ol>
        </div>
        <div class="col-md-4">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <asp:Label ID="Lblmsg" runat="server"></asp:Label>
        </div>
        </asp:Panel>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
     
        </div>
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
     
        </div>
    </div>
                    
<div class="row">
 <div class="col-md-10">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Both">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-Width="2px">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>
<%--<asp:BoundField HeaderText="Order-Id" DataField="Order_Id" HeaderStyle-Width="12px"/>--%>
<asp:TemplateField HeaderText="Order Details" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Order ID :</b><asp:Label ID="LblOdId1" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Id") %>'></asp:Label><br />
<b>Amount:</b><asp:Label ID="LblOamount" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Amount") %>'></asp:Label><br />
<b>Delivery Charge:</b><asp:Label ID="lblDcharges" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Delivery_Charges") %>'></asp:Label>
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="20px"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="User Details" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Name:</b><asp:Label ID="LblUname" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Name") %>'></asp:Label><br />
<b>Mobile:</b><asp:Label ID="LblUphone" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Mobile") %>'></asp:Label><br />
<b>Email:</b><asp:Label ID="LblUemail" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Email") %>'></asp:Label><br />
<b>Address:</b><asp:Label ID="LblUaddress" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Address") %>'></asp:Label><br />
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
</asp:TemplateField>
<asp:TemplateField HeaderText="Date/Time" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Date:</b><asp:Label ID="Lbldate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Date") %>'></asp:Label><br />
<b>Time:</b><asp:Label ID="lbltime" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Time") %>'></asp:Label>
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
</asp:TemplateField>
</Columns>   
</asp:GridView>
</div>
</div>
    
    <div class="row">
        <div class="col-md-6">
             
    
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
             
        </div>
        <div class="col-md-3">
     
        </div>
        <div class="col-md-3">
    
    
        </div>
        <div class="col-md-3">
               
        </div>
    </div>
    <br />
</asp:Content>

