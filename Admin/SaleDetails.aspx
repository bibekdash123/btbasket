<%@ Page Title="Profit/loss|btbasket.com" Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="SaleDetails.aspx.cs" Inherits="MyBazarAdmin_SaleDetails" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="row">
<div class="col-md-12">
<h2>Profit / Loss Calculations..</h2>
<ol class="breadcrumb">
<li><a href="AddItem.aspx">Home</a></li>
<li class="SaleDetails.aspx">Sale Deatails</li>
</ol>
</div>
</div>
<div class="row top-buffer1">
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
<div class="row top-buffer1">
    <div class="col-md-2"></div>
    <div class="col-md-8">
<ul class="nav nav-tabs" role="tablist">
<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Add Sale Details</a></li>
<li role="presentation"><a href="#saleyear" aria-controls="sale" role="tab" data-toggle="tab">Year Wise Profit</a></li>
<li role="presentation"><a href="#salemonth" aria-controls="month" role="tab" data-toggle="tab">Month Wise Profit</a></li>
</ul>
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="home">
                  <div class="row">
                      <div class="col-xs-1 col-sm-1 col-md-1">

                      </div>
                      <div class="col-md-10">
                          <div class="panel panel-default">
                           <div class="panel-heading">
                               <div class="panel-title">
                                   <h3>Upload Sale Details...</h3>
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
                     
                     
                 </div><br />
                 <div class="form-group">
                    <asp:Label ID="LblName" runat="server" Text="Order-Id" Font-Bold="true"></asp:Label>
                    <asp:DropDownList ID="DdlOrderId" runat="server" CssClass="selectpicker" data-style="btn-primary"  AutoPostBack="True" OnSelectedIndexChanged="DdlOrderId_SelectedIndexChanged" ></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblProduct" runat="server" Text="Order-Date" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" Visible="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblBrandname" runat="server" Text="Order-Year" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtYear" runat="server" CssClass="form-control" Visible="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblMonth" runat="server" Text="Order-Month" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtMonth" runat="server" CssClass="form-control" Visible="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblMRP" runat="server" Text="Sale Price" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtSale" CssClass="form-control" runat="server" placeholder="Enter Sale Price Here" AutoPostBack="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="LblMargin" runat="server" Text="Cost Price" Font-Bold="true"></asp:Label>
                     <asp:TextBox ID="TxtCost" CssClass="form-control" runat="server" placeholder="Enter Cost Price Here" AutoPostBack="true" OnTextChanged="TxtCost_TextChanged"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <asp:Label ID="LblPrice" runat="server" Text="Profit/Loss" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtProfit" CssClass="form-control" runat="server" placeholder="Profit/Loss"></asp:TextBox>
                </div>
                 
                 <div class="form-group">
                    <asp:Button ID="BtnRegister" CssClass="btn btn-success" runat="server" Text="Save" OnClick="BtnRegister_Click"/>
                     
                </div>
                     </div>  
                 </div>
                 </div>
        
        </div>
                      <div class="col-xs-1 col-sm-1 col-md-1">

                      </div>
        
    </div>
                </div>
<div role="tabpanel" class="tab-pane" id="saleyear">
<asp:UpdatePanel ID="UpdatePanelYear" runat="server">
<ContentTemplate>
<div class ="row top-buffer1">
    <div class="col-md-4">
<asp:DropDownList ID="DdlYear" runat="server" AutoPostBack="true" style="background-color:#F3B50F;color:#000;font-size:medium;font-weight:500" OnSelectedIndexChanged="DdlYear_SelectedIndexChanged"></asp:DropDownList>
    </div>
</div>
<div class="row">
<div class="col-md-10">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" Height="145px" ShowFooter="True" GridLines="Both" onrowdatabound="GridView1_RowDataBound">
<FooterStyle BackColor="#B6B6B6" ForeColor="#000" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="7px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="OrderDetail">
    <ItemTemplate>
<b>Order ID :</b><asp:Label ID="LblOdId" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Id") %>'></asp:Label><br />
<b>Date:</b><asp:Label ID="LblTranDate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Date") %>'></asp:Label>
    </ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Year-Month">
    <ItemTemplate>
<asp:Label ID="LblOdId" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Year") %>'></asp:Label>-<asp:Label ID="LblTranDate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Month") %>'></asp:Label>
    </ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
</asp:TemplateField>
<%--<asp:TemplateField HeaderText="Price">
    <ItemTemplate>
<b>Cost Price :</b><asp:Label ID="LblCost" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Cost_Price") %>'></asp:Label><br />
<b>Sale Price :</b><asp:Label ID="LblSale" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Sale_Price") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>--%>
<%--<asp:BoundField HeaderText="Order ID" DataField="Order_Id" />
<asp:BoundField HeaderText="Date" DataField="Transaction_Date" />
<asp:BoundField HeaderText="Year" DataField="Year" />
<asp:BoundField HeaderText="Month" DataField="Month" />--%>
<asp:BoundField HeaderText="Cost Price" DataField="Cost_Price" ItemStyle-Width="13px" />
<asp:BoundField HeaderText="Sale Price" DataField="Sale_Price" ItemStyle-Width="13px" />
<asp:BoundField HeaderText="Profit/Loss" DataField="Profit_Loss" ItemStyle-Width="9px" />
</Columns>   
</asp:GridView>
</div>
</div> 
</ContentTemplate>
</asp:UpdatePanel>               
</div>
<div role="tabpanel" class="tab-pane" id="salemonth">
<asp:UpdatePanel ID="up1" runat="server">
    <ContentTemplate>
<div class ="row top-buffer1">
    <div class="col-md-4">
<asp:DropDownList ID="DdlYear1" runat="server" AutoPostBack="true" style="background-color:#F3B50F;color:#000;font-size:medium;font-weight:500"></asp:DropDownList>
    </div>
    <div class="col-md-4">
<asp:DropDownList ID="DdlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DdlMonth_SelectedIndexChanged" style="background-color:#F3B50F;color:#000;font-size:medium;font-weight:500"></asp:DropDownList>
    </div><div class="col-md-4"></div>
</div>
<div class="row">
<div class="col-md-10">
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" Height="145px" ShowFooter="True" GridLines="Both" onrowdatabound="GridView1_RowDataBound">
<FooterStyle BackColor="#B6B6B6" ForeColor="#000" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="7px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="OrderDetail">
    <ItemTemplate>
<b>Order ID :</b><asp:Label ID="LblOdId" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Id") %>'></asp:Label><br />
<b>Date:</b><asp:Label ID="LblTranDate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Date") %>'></asp:Label>
    </ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Year-Month">
    <ItemTemplate>
<asp:Label ID="LblOdId" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Year") %>'></asp:Label>-<asp:Label ID="LblTranDate" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Month") %>'></asp:Label>
    </ItemTemplate>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
</asp:TemplateField>
<%--<asp:TemplateField HeaderText="Price">
    <ItemTemplate>
<b>Cost Price :</b><asp:Label ID="LblCost" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Cost_Price") %>'></asp:Label><br />
<b>Sale Price :</b><asp:Label ID="LblSale" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Sale_Price") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>--%>
<%--<asp:BoundField HeaderText="Order ID" DataField="Order_Id" />
<asp:BoundField HeaderText="Date" DataField="Transaction_Date" />
<asp:BoundField HeaderText="Year" DataField="Year" />
<asp:BoundField HeaderText="Month" DataField="Month" />--%>
<asp:BoundField HeaderText="Cost Price" DataField="Cost_Price" ItemStyle-Width="13px" />
<asp:BoundField HeaderText="Sale Price" DataField="Sale_Price" ItemStyle-Width="13px" />
<asp:BoundField HeaderText="Profit/Loss" DataField="Profit_Loss" ItemStyle-Width="9px" />
</Columns>
<%--<Columns>
<asp:TemplateField HeaderText="Sl-No">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="Order ID" DataField="Order_Id" />
<asp:BoundField HeaderText="Date" DataField="Transaction_Date" />
<asp:BoundField HeaderText="Year" DataField="Year" />
<asp:BoundField HeaderText="Month" DataField="Month" />
<asp:BoundField HeaderText="Purchase Price" DataField="Cost_Price" />
<asp:BoundField HeaderText="Sale Price" DataField="Sale_Price" />
<asp:BoundField HeaderText="Profit/Loss" DataField="Profit_Loss" />
</Columns>--%>   
</asp:GridView>
</div>
</div> 
    </ContentTemplate>
</asp:UpdatePanel>

             
</div>
</div>
    </div>
    <div class="col-md-2"></div>
</div>
</asp:Content>

