<%@ Page Title="Best Online Grocery Shopping In Bhubaneswar,Save Big On Online Grocery|btbasket.com" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User-Login.aspx.cs" Inherits="MyBazarUser_User_Login" EnableViewStateMac="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<meta name ="keywords" content ="Online Grocery Services bhubaneswar, Online Retail Services bhubaneswar, E-commerce Company bhubaneswar, E-shop bhubaneswar,  online retail bhubaneswar, grocery shopping bhubaneswar, Home delivery bhubaneswar , Grocery app bhubaneswar, User login panel E-commerce"/>
<meta name ="robot" content ="index, no follow"/>
<meta name ="copyright" content ="Copyright © 2016 BTsoftnet services . All Rights Reserved."/>
<meta name ="author" content ="btsoftnet"/>
<meta name ="revisit-after" content ="15 days"/>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
               <li class="active">Login</li>
            </ol>
        </div>
        <div class="col-md-4">

        </div>
    </div>
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-1"></div>
        
        <div class="col-sm-4">
            <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>Sign in to BTbasket</h4>
                    <%--<h6>Sign in</h6>--%>
                    <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Oops!!! The Mobile Or Password Not Matching...
        </div>
            </asp:Panel> 
                </div>
                </div>
<div class="panel-body">
<asp:Panel ID="PanelLogin" runat="server" DefaultButton="BtnLogin">
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtMobile"  CssClass="logintxtcss" runat="server" placeholder=""></asp:TextBox>
<label for="first">Mobile Number</label>
<asp:RequiredFieldValidator ID="RequiredMail" runat="server" CssClass="text-danger" ControlToValidate="TxtMobile" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
</div>              
</div>
<div class="form-group">
<div class="row">
<div class="col-md-2">
                         
                    </div>
                    <div class="col-md-4"></div>
<div class="col-md-6">
<asp:Button ID="Btnpwd" runat="server" CssClass="btn btn-link btn-sm" Text="Forget Password" TabIndex="2" OnClick="Btnpwd_Click" CausesValidation="false" />
                        
                    </div>
                </div>
<div class="has-float-label">
<asp:TextBox ID="TxtPassword" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
<label for="first">Enter Password</label>
<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div> 
</div>
<div class="form-group">
 <asp:Button ID="BtnLogin" runat="server" Text="Login to btBasket" TabIndex="1" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" CausesValidation="false" OnClick="BtnLogin_Click">
                   
                </asp:Button>
                </div>
 <strong>New User? </strong><a href="signup"><strong>Register For Free</strong></a>
 </asp:Panel>
                </div>
</div>
</div>
        <div class="col-md-1 middlebar"></div>
        <div class="col-sm-6">
            <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">
                 <h4>Register with BTbasket</h4>
                   
                </div>
                </div>
        <asp:Panel ID="PanelDuplicate" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            User Email ID Already Exist....
        </div>
        </asp:Panel>
 <div class="panel-body">
<asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister">
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" OnTextChanged="TxtMail_TextChanged"  AutoPostBack="true" placeholder=""></asp:TextBox>
<label for="first">Email Id</label>
<asp:RegularExpressionValidator ID="RegularExpEmail" runat="server" ErrorMessage="Enter valid email..." ControlToValidate="TxtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
</div>
<div class="form-group">        
<div class="has-float-label">
<asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" placeholder=""></asp:TextBox>
<label for="first">Name</label>
<asp:RequiredFieldValidator ID="RequiredName" runat="server" CssClass="text-danger" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" placeholder=""></asp:TextBox>
<label for="first">Mobile Number</label>
<asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
</div>
</div>
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtPwd" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
<label for="first">Password</label>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtAddress" CssClass="logintxtcss" runat="server" placeholder=""></asp:TextBox>
<label for="first">Address</label>
<asp:RequiredFieldValidator ID="RequiredAddress" runat="server" CssClass="text-danger" ControlToValidate="TxtAddress" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<div class="has-float-label">
<asp:TextBox ID="TxtPin" CssClass="logintxtcss" runat="server" placeholder=""></asp:TextBox>
<label for="first">Pin Number</label>
<asp:RequiredFieldValidator ID="RequiredPin" runat="server" CssClass="text-danger" ControlToValidate="TxtPin" ErrorMessage="Pin Number Required"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Create your btBasket account" OnClick="BtnRegister_Click"  CausesValidation="false" />
<strong>Returning Customer?</strong>  <a href="user/login"><strong>Sign-In</strong></a>
</div> 
</asp:Panel>
            </div>
            
            </div>
           
        </div>
        <%--<div class="col-md-3">

        </div>--%>     
        
    </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-toggle="tooltip]').tooltip();
        });
    </script>

</asp:Content>

