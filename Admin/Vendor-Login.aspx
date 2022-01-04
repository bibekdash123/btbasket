<%@ Page Title="btBasket.com|Login" Language="C#" MasterPageFile="~/Admin/MasterLogin.master" AutoEventWireup="true" CodeFile="Vendor-Login.aspx.cs" Inherits="VendorLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <ol class="breadcrumb">
                <li><a href="Home1.aspx">Home</a></li>
                <li class="active">Login</li>
            </ol>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4>Admin Panel</h4>
                    </div>
                    <div class="form-group">
                        <h5><i class="fa fa-envelope"></i>Email:</h5>
                        <asp:TextBox ID="TxtMail" CssClass="form-control" runat="server" placeholder="Email Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Email Address Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <h5><i class="fa fa-key"></i>Password:</h5>
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="Btnpwd" runat="server" CssClass="btn btn-link" Text="Forget Password" />
                            </div>
                        </div>

                        <asp:TextBox ID="TxtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="BtnLogin" runat="server" Text="I AM ADMIN" CssClass="btn btn-success btn-lg btn-block" OnClick="BtnLogin_Click" />
                        <a href="../Home1.aspx">User Area</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-4">
        </div>
    </div>


</asp:Content>

