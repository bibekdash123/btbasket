<%@ Page Title="btbasket.com|AdminLogin" Language="C#" MasterPageFile="~/Admin/MasterLogin.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4"></div>
<div class="col-md-4"></div>
</div>
<div class="container">
    <div class="row top-buffer3">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="panel adminloginpanel">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>Admin Panel</h4>
                    </div></div>
                    <div class="panel-body">
                    <div class="form-group">
                        <asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" placeholder="Email Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Email Address Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                
                            </div>
                            <div class="col-md-6">
                                
                            </div>
                        </div>

                        <asp:TextBox ID="TxtPassword" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="BtnLogin" runat="server" Text="LOGIN AS ADMIN" CssClass="btn btn-success btn-lg btn-block" OnClick="BtnLogin_Click" />
                        
                    </div>
                    </div>
                
            </div>

        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>

</asp:Content>

