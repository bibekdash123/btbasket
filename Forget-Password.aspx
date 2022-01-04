<%@ Page Title="btBasket.com|Login" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Forget-Password.aspx.cs" Inherits="MyBazarUser_ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br /><br /><br /><br />
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
               <li><a href="home">Login</a></li>
               <li class="active">Forget-Password</li>
            </ol>
        </div>
        <div class="col-md-4">

        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close" data-toggle="modal" data-target="#myModal1">&times;</a>
            Password Changed Successfully....
        </div>
        </asp:Panel>
        </div>
        </div>
    <div class="row">
        <div class="col-md-3">
             <asp:HiddenField ID="Hiddenotp" runat="server" />
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>Password Reminder</h4>
                </div>
                </div>
            <div class="panel-body">
<div class="form-group">
<h5><i class="fa fa-envelope"></i>Mobile:</h5>
<asp:TextBox ID="Txtphone"  CssClass="form-control" runat="server" placeholder="Enter Registered Mobile"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="Txtphone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:TextBox ID="Txtotp" CssClass="modaltxtbox" runat="server" placeholder="OTP" Visible="false"></asp:TextBox>
</div>
<div class="form-group">
<asp:TextBox ID="TxtPwd" CssClass="modaltxtbox" runat="server" TextMode="Password" placeholder="Set New Password" Visible="false"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="regis" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Button ID="Btnotp" runat="server" Text="Send OTP" CssClass="btn btn-success" OnClick="Btnotp_Click" /><asp:Button ID="Btnverify" runat="server" CssClass="btn btn-success" Visible="false" Text="Verify" OnClick="Btnverify_Click" />
</div>
<div class="form-group">
<asp:Button ID="BtnUpdate" CssClass="btn btn-success btn-lg btn-block" runat="server" ValidationGroup="regis" TabIndex="1" Visible="false" Text="ReSet Password" OnClick="BtnUpdate_Click" />
</div>
                </div>
            </div>
        
            </div>
        <div class="col-md-3">

        </div>     
    </div>


</asp:Content>

