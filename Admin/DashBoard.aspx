<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterEntry.master" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="MyBazarAdmin_DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            Welcome:<asp:Label ID="LblAdmin" runat="server"></asp:Label>
        </div>
    </div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<h4>Total Orders:<asp:Label ID="LblOrder" runat="server" CssClass="label label-success" Font-Size="small"></asp:Label></h4>
<h4></h4>
</div>
<div class="col-md-3"></div>
</div>
</asp:Content>

