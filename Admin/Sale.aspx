<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterEntry.master" AutoEventWireup="true" CodeFile="Sale.aspx.cs" Inherits="MyBazarAdmin_Sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="row">
        <div class="col-md-12">
            Welcome:<asp:Label ID="LblAdmin" runat="server"></asp:Label>
        </div>
    </div>
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
<ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Add Sale Details</a></li>
                
                
            </ul>
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="home">
                  <div class="row">
                      <div class="col-xs-1 col-sm-1 col-md-1">

                      </div>
                      <div class="col-md-10">
                          <div class="panel panel-success">
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
                     <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </div>
                     </div>  
                 </div>
                 </div>
        
        </div>
                      <div class="col-xs-1 col-sm-1 col-md-1">

                      </div>
        
    </div>
                </div>

</div>

</asp:Content>

