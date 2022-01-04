<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPayment.master" AutoEventWireup="true" CodeFile="Order-Confirm.aspx.cs" Inherits="Order_Confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
    <div class="col-md-12 col-sm-12">
    <ol class="breadcrumb">
    <li><a href="pc">Home</a></li>
    <li class="active">Order Confirmation</li>
    </ol>
    </div>

</div>
<div class="row">
   
    <div class="col-md-10 col-sm-12">
        <div class="confirm-order">
<h4 style="color:#00b545"><span class="glyphicon glyphicon-ok-circle"></span>  Order Confirmed On Order ID : <asp:Label ID="Lblorderid" runat="server"></asp:Label> </h4>
<%--<h3>Delivery Expected : <asp:Label ID="LblDelivery" runat="server"></asp:Label></h3>--%>
<h5>If Order placed Before 3 PM : <b>Same Day Delivery</b></h5> 
<h5>If Order Placed After 3 PM : <b>Next Day Delivery</b></h5>
        </div>
    </div>
    
</div>
</asp:Content>

