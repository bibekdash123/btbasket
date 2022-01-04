<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyBazarUser_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>

    <div class="container-fluid">
        <div class="row">
        <div class="col-md-12">
            <asp:HiddenField ID="HiddenMail" runat="server" />
        </div>
        <div class="col-md-6 col-sm-12">
            <ol class="breadcrumb">
               <li><a href="#">Home</a></li>
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
    </div>
   

<div class="card-body">
<div class="row">
    <div class="col-md-4 col-sm-12"><div class="form-group">
                    <%--<h5>User Name</h5>--%>
                    <asp:TextBox ID="TxtName" CssClass="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </div></div>
    <div class="col-md-4"><div class="form-group"> 
                    <%--<h5>Email ID</h5>--%>
                    <asp:TextBox ID="TxtMail" CssClass="form-control" runat="server" placeholder="@ Email Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Mail Address Required"></asp:RequiredFieldValidator>
                </div></div>
    <div class="col-md-4"><div class="form-group">  
                    <%--<h5>Mobile Number</h5>--%>
                    <asp:TextBox ID="TxtPhone" CssClass="form-control" runat="server" placeholder="Mobile Number" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
                </div></div>
</div>
<div class="row">
    <div class="col-md-4 col-sm-12">
        <div class="form-group">
                    
                    <%--<h5>Address</h5>--%>
                    <asp:TextBox ID="TxtAddress" CssClass="form-control" runat="server" placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                </div>
    </div>
    <div class="col-md-4 col-sm-12">
        <div class="form-group">
                    
                    <%--<h5>Pincode</h5>--%>
                    <asp:TextBox ID="TxtPin" CssClass="form-control" runat="server" placeholder="Area PinCode"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPin" runat="server" ControlToValidate="TxtPin" ErrorMessage="Pin Number Required"></asp:RequiredFieldValidator>
                </div>
    </div>
    <div class="col-md-4 col-sm-12">
<%--<div class="form-group">
  <asp:Button ID="BtnUpdate" CssClass="btn btn-success btn-md" runat="server" Text="Update Profile" OnClick="BtnUpdate_Click" />
</div>--%>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-sm-12 text-center">
<div class="form-group">
  <asp:Button ID="BtnUpdate" CssClass="btn btn-success" runat="server" Text="Update Profile" OnClick="BtnUpdate_Click" />
</div>
    </div>
</div>
 
</div>
    
</asp:Content>

