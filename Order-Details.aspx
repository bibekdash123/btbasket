<%@ Page Title="btbasket | Order View" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Order-Details.aspx.cs" Inherits="Order_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
<div class="row">
<div class="col-md-2">
<asp:HiddenField ID="HiddenId" runat="server" />
</div>
<div class="col-md-4">
</div>
<div class="col-md-6">
<ol class="breadcrumb">
<li><a href="pc">Home</a></li>
<li><a href="account">User-Home</a></li>
<li class="active">OrderHistory</li>
</ol>
</div>
    </div>
    <div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<div class="input-group">
<asp:TextBox ID="Txtsearch" runat="server" class="form-control" placeholder="Order ID.."></asp:TextBox>
<span class="input-group-btn">
<asp:LinkButton ID="Btnordersearch" runat="server" class="btn btn-success" CausesValidation="false" OnClick="Btnordersearch_Click">Search Order</asp:LinkButton>
</span>
</div>
<asp:Label ID="Lbldate" runat="server" Font-Size="16px"></asp:Label>
</div>
<div class="col-md-3"></div>
    </div>
<div class="container">
<div  class="row">
<div class="col-md-2">
<asp:HiddenField ID="HiddenMail" runat="server" />
</div>
<div class="col-md-8 col-xs-12 pull-left">
  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="false" Height="145px" margin-top="20px" CssClass="panel panel-default gridmargin" BackColor="White" BorderColor="#333" GridLines="horizontal">
<HeaderStyle HorizontalAlign="right" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="SL-NO" HeaderStyle-BackColor="white" HeaderStyle-ForeColor="#333" HeaderStyle-Width="20px">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
<ItemStyle Width="10px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="" HeaderStyle-BackColor="white" HeaderStyle-ForeColor="#333" ControlStyle-Width="80px">
<ItemTemplate>
<asp:Label ID="Lblbrand" runat="server" Font-Size="12px" Text='<%#Eval("Product_Brand")%>'></asp:Label>:<asp:Label ID="lblname" runat="server" Font-Size="12px" Text='<%#Eval("Product_Name")%>'></asp:Label>
</ItemTemplate>
    <ItemStyle Width="300px" HorizontalAlign="Left" />
</asp:TemplateField>
<asp:TemplateField HeaderText="" HeaderStyle-BackColor="white" HeaderStyle-ForeColor="#333" ControlStyle-Width="60px">
    <ItemTemplate>
Weight :<b> <asp:Label ID="Lblstatus" runat="server" Font-Size="12px" Text='<%#Eval("Product_Quantity")%>'></asp:Label></b><br />
Unit :<b><asp:Label ID="Label1" runat="server" Font-Size="12px" Text='<%#Eval("Product_Unit")%>'></asp:Label></b>
    </ItemTemplate>
    <ItemStyle Width="300px" HorizontalAlign="Left" />
</asp:TemplateField>

</Columns>
    
</asp:GridView>
            </div>
<div class="col-md-2"></div>
    
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
</asp:Content>

