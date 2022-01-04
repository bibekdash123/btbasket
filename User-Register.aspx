<%@ Page Title="Best Online Grocery Shopping In India,Save Big On Online Grocery|btbasket.com" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="User-Register.aspx.cs" Inherits="MyBazarUser_User_Register"
   MetaKeywords="online grocery delivery bhubaneswar,online grocery in bhubaneswar,online supermarket in bhubaneswar, online grocery in odisha,best online grocery in india,online grocery delivery in india "
MetaDescription="Register free for online grocery shopping in bhubaneswar with reasonable price" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="row top-buffer"></div><div class=" row top-buffer"></div><div class=" row top-buffer1"></div>
    
    <div class="container">
	<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<div class="panel panel-default">
<%--<div class="panel-heading">--%>             
<ul class="nav panel-tabs">
<li class="active"><a href="#tab1" data-toggle="tab">Login</a></li>
<li><a href="#tab2" data-toggle="tab">Register</a></li>
</ul>
<%--</div>--%>
<div class="panel-body">
<div class="tab-content">
<div class="tab-pane active" id="tab1">
<asp:Panel ID="PanelLogin" runat="server" DefaultButton="BtnLogin">
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtMobile"  CssClass="logintxtcss" runat="server" placeholder="Enter Registered Mobile Number"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredMail" runat="server" CssClass="text-danger" ControlToValidate="TxtMobile" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>            
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
<asp:TextBox ID="TxtPassword" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Enter Password Here"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Button ID="BtnLogin" runat="server" Text="LOGIN TO BTBASKET" TabIndex="0" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" CausesValidation="false" OnClick="BtnLogin_Click"></asp:Button>
<asp:Button ID="Btnpwd" runat="server" CssClass="btn btn-link btn-sm" Text="Forget Password" TabIndex="2" OnClick="Btnpwd_Click" CausesValidation="false" />
</div>
</asp:Panel>
</div>
<div class="tab-pane" id="tab2">
<asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister">
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
<asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" OnTextChanged="TxtMail_TextChanged"  AutoPostBack="true" placeholder="Enter Email ID"></asp:TextBox>
</div>
<asp:RegularExpressionValidator ID="RegularExpEmail" runat="server" ErrorMessage="Enter valid email..." ControlToValidate="TxtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
<div class="form-group"> 
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
<asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" placeholder="Users Full Name"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredName" runat="server" CssClass="text-danger" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>       
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" placeholder="Users Mobile Number"></asp:TextBox>
</div>
<asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
<asp:TextBox ID="TxtPwd" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Users Login Password"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-book"></span></span>
<asp:TextBox ID="TxtAddress" CssClass="logintxtcss" runat="server" placeholder="Desired Delivery Address"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredAddress" runat="server" CssClass="text-danger" ControlToValidate="TxtAddress" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
<asp:TextBox ID="TxtPin" CssClass="logintxtcss" runat="server" placeholder="Area Pincode"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredPin" runat="server" CssClass="text-danger" ControlToValidate="TxtPin" ErrorMessage="Pin Number Required"></asp:RequiredFieldValidator>
</div>

<div class="form-group">
<asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" TabIndex="1" Text="Register" OnClick="BtnRegister_Click"  CausesValidation="false" />

</div> 
</asp:Panel>
                          

                        </div>
</div>
</div>
</div>
</div>
<div class="col-md-3"></div>
	</div>
</div> 
</asp:Content>

