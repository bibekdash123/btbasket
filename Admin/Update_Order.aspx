<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="Update_Order.aspx.cs" Inherits="MyBazarAdmin_Update_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="row top-buffer"></div><div class="row top-buffer"></div>
    <%--<asp:UpdatePanel runat="server">
        <ContentTemplate>--%>
            <div class="row">
        <div class="col-md-4">
            <h2>Update Orders..</h2>
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="AddItem.aspx" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Data has been updated..
                </div>
        </asp:Panel>
        </div>
        <div class="col-md-6">
            
        </div>
        <div class="col-md-2">

        </div>
    </div>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
<asp:Panel ID="Panel1" runat="server">
                <div class="form-group">
                    <asp:Button ID="BtnStatus" CssClass="btn btn-success" runat="server" Text="Update Status" OnClick="BtnStatus_Click"/>
                    <asp:Button ID="BtnDelete" CssClass="btn btn-success" runat="server" Text="Delete Order" OnClick="BtnDelete_Click" />
                </div>
                 <div class="form-group">
                     <asp:Label ID="LblOrder" runat="server" Text="Order-ID"></asp:Label>
                    <asp:DropDownList ID="DdlOrder" runat="server" CssClass="selectpicker" data-style="btn-primary"  AutoPostBack="True" OnSelectedIndexChanged="DdlOrder_SelectedIndexChanged" ></asp:DropDownList>
                 </div>
<div class="row top-buffer1"></div>
<div class="row">
    <div class="col-md-4 col-sm-6">
<div class="form-group">
                    <%--<asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>--%>
                     <asp:TextBox ID="TxtEmail" CssClass="logintxtcss" runat="server" ReadOnly="true" placeholder="Email"></asp:TextBox>
                </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="form-group">
                    <%--<asp:Label ID="LblName" runat="server" Text="Name"></asp:Label>--%>
                     <asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" ReadOnly="true" placeholder="Name"></asp:TextBox>
                </div>
    </div>
    <div class="col-md-4 col-sm-6">
<div class="form-group">
                    <%--<asp:Label ID="LblMob" runat="server" Text="Phone"></asp:Label>--%>
                     <asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4 col-sm-6">
        <div class="form-group">
                    <%--<asp:Label ID="LblAmount" runat="server" Text="Amount"></asp:Label>--%>
                     <asp:TextBox ID="TxtAmount" CssClass="logintxtcss" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="form-group">
                   <%-- <asp:Label ID="LblDate" runat="server" Text="Date"></asp:Label>--%>
                    <asp:TextBox ID="TxtDate" CssClass="logintxtcss" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class="form-group">
                    <%--<asp:Label ID="LblTime" runat="server" Text="Time"></asp:Label>--%>
                    <asp:TextBox ID="TxtTime" CssClass="logintxtcss" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
    </div>
</div>
                <div class="form-group">
                    <%--<asp:Label ID="LblStatus" runat="server" Text="OrderStatus"></asp:Label>--%>
                    <asp:TextBox ID="TxtStatus" CssClass="logintxtcss" runat="server" placeholder="Enter Status"></asp:TextBox>
                </div>
                 
            </asp:Panel>
    </div>
    <div class="col-md-2"></div>
</div>
    
</asp:Content>

