<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="Profile-Update.aspx.cs" Inherits="MyBazarUser_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="row top-buffer">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenMail" runat="server" />
        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="account">Home</a></li>
               <li class="active">Profile-Update</li>
            </ol>
        </div>
        <div class="col-md-4 pull-right">
            
        </div>
    </div>

    <div class="row" style="background:#fff">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
            <div class="panel-body">

<div class="row">
    <div class="col-md-4"><div class="form-group">
                    
                    <h5>User Name</h5>
                    <asp:TextBox ID="TxtName" CssClass="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </div></div>
    <div class="col-md-4"><div class="form-group">
                    
                    <h5>Email ID</h5>
                    <asp:TextBox ID="TxtMail" CssClass="form-control" runat="server" placeholder="@ Email Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Mail Address Required"></asp:RequiredFieldValidator>
                </div></div>
    <div class="col-md-4"><div class="form-group">
                    
                    <h5>Mobile Number</h5>
                    <asp:TextBox ID="TxtPhone" CssClass="form-control" runat="server" placeholder="Mobile Number" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
                </div></div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="form-group">
                    
                    <h5>Address</h5>
                    <asp:TextBox ID="TxtAddress" CssClass="form-control" runat="server" placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
                    
                    <h5>Pincode</h5>
                    <asp:TextBox ID="TxtPin" CssClass="form-control" runat="server" placeholder="Area PinCode"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPin" runat="server" ControlToValidate="TxtPin" ErrorMessage="Pin Number Required"></asp:RequiredFieldValidator>
                </div>
    </div>
    <div class="col-md-4">

    </div>
</div> 
<div class="row">
    <div class="col-md-12">
<div class="form-group">
  <asp:Button ID="BtnUpdate" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Update Profile" OnClick="BtnUpdate_Click" />
</div>
    </div>
</div>


</div>   
        </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

