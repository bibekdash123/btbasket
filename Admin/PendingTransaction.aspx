<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="PendingTransaction.aspx.cs" Inherits="MyBazarUser_PendingTransaction" Title="BTbasket|Pending Transaction" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenId" runat="server" />
            <h2>Pending Orders..</h2>
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
<div class="col-md-4">
<asp:DropDownList ID="DdlYear" runat="server" CssClass="dropdownfilter" AutoPostBack="true"></asp:DropDownList>
</div>
<div class="col-md-4">
<asp:DropDownList ID="DdlMonth" runat="server" CssClass="dropdownfilter" AutoPostBack="true"></asp:DropDownList>   
</div>
<div class="col-md-4">
<asp:Button ID="BtnShowOrder" runat="server" Text="Show" CssClass="btn btn-success btn-sm" OnClick="BtnShowOrder_Click" CausesValidation="false"/>
<asp:Label ID="Label1" runat="server"></asp:Label>
</div>
</div>                    
<div class="row top-buffer1">
<div class="col-md-10">
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Horizontal">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>

<asp:TemplateField HeaderText="Order #" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Order ID :</b><asp:Label ID="Lblodid" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Id") %>'></asp:Label>
<b>Amount:</b><asp:Label ID="Lblamount" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Amount") %>'></asp:Label>
<h4><span class="label label-danger">Pending</span></h4>
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
</asp:TemplateField>

<asp:TemplateField HeaderText="Year/Month" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Year:</b><asp:Label ID="Year" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Year") %>'></asp:Label><br />
<b>Month:</b><asp:Label ID="Month" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Month") %>'></asp:Label><br /> 
<b>Date:</b><asp:Label ID="Lbldate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Date") %>'></asp:Label><br />
<b>Time:</b><asp:Label ID="lbltime" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Time") %>'></asp:Label><br />     
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%" Width="15px"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="10px"></ItemStyle>
</asp:TemplateField>

<asp:TemplateField HeaderText="Bill">
<ItemTemplate>
<asp:hyperlink id="hyp1" runat="server" navigateurl='<%# "Invoice.aspx?ID=" + Eval("Order_Id")%>' Target="_blank" text="Customer Invoice" Font-Bold="true"/><br/>
<asp:hyperlink id="HypVendor" runat="server" navigateurl='<%# "Vendor-Invoice.aspx?ID=" + Eval("Order_Id")%>' Target="_blank" text="Vendor Invoice" Font-Bold="true"/>
</ItemTemplate>
<ItemStyle HorizontalAlign="left" VerticalAlign="Bottom" Width="20px"></ItemStyle>
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

