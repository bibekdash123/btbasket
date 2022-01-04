<%@ Page Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="MyBazarUser_ChangePassword" Title="BTbasket|My Orders" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenMobile" runat="server" />
        </div>
        <div class="col-md-12 col-sm-12">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
               <li class="active">OrderHistory</li>
            </ol>
        </div>
         <div class="col-md-6 col-sm-12 text-right showinmobile">
            <div class="dropdown ">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   My DashBoard
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="Myorders">MY ORDERS</a>
    <a class="dropdown-item" href="Mytransactions">MY TRANSACTIONS</a>
    <a class="dropdown-item" href="return-refund">REFUND/RETURN</a>
    <a class="dropdown-item" href="Changepassword">CHANGE PASSWORD</a>
    <a class="dropdown-item" href="LOGOUT">LOGOUT</a>
  </div>
</div>
         
        </div>
    </div>
    
    <div  class="row">
    <div class="col-md-2">
        <asp:HiddenField ID="HiddenMail" runat="server" />
        <asp:HiddenField ID="HiddenAmnt" runat="server" Value="200" />
        <asp:HiddenField ID="HiddenAmount" runat="server" />
        <asp:Label ID="LblOdId" runat="server" Visible="false"></asp:Label>
        <asp:Label ID="LblCode" runat="server" Text="MYBAZ" Visible="False"></asp:Label>
        </div>
    <div class="col-md-12 col-sm-12">
            <asp:Label ID="LblMessage" runat="server" Visible="False"></asp:Label>
        <br />
    <div class="card">
<div class="card-body">
            <div class="form-group">
                    <label>New Password</label>
                    <asp:TextBox ID="TxtPwd" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </div>
            <div class="form-group">
                    <label>Confirm Password</label>
                    <asp:TextBox ID="TxtcPwd" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="ComparePwd" runat="server" ErrorMessage="Password Must Be Same" ControlToCompare="TxtPwd" ControlToValidate="TxtcPwd"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="BtnPwdUpdate" runat="server" CssClass="btn btn-success" Text="Change Password" OnClick="BtnPwdUpdate_Click" />
                </div>
            </div>
            </div>
   </div>
</div>  
   
</asp:Content>

