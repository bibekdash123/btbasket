<%@ Page Title="Contact | btbasket.com" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Contact-Us.aspx.cs" Inherits="MyBazarUser_Contact_Us" 
    MetaKeywords="Online grocery services in bhubaneswar, Online retail services in bhubaneswar, E-commerce Company in bhubaneswar, E-shop in bhubaneswar,  online retail in bhubaneswar, online grocery shopping in bhubaneswar, Home delivery in bhubaneswar , Grocery app in bhubaneswar" 
    MetaDescription="Regd Office: #891/935,  Laxmisagar,  Bhubaneswar-751006,  Email: info@btbasket.com,  Mobile:(+91)90404 50505 | (+91)70779 98587"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenDate" runat="server" />
        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
               <li class="active">Contact</li>
            </ol>
        </div>
        <div class="col-md-4"></div>
    </div>
<%--<h3>Contact Us and give your valuable feedback...</h3>--%>
<div class="container">
    <div class="row">
        <div class="col-md-8">
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">Contact Us and give your valuable feedback...</h4>
    </div>
    <div class="panel-body">
<div class="well well-sm">
                <form>
                <div class="row">
<div class="col-md-6">
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" placeholder="User Name"></asp:TextBox>
</div>                 
<asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" placeholder="@ Email Address"></asp:TextBox>
</div>                 
<asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Mail Address Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" placeholder="Mobile Number"></asp:TextBox>
</div>                    
<asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtQuery" CssClass="logintxtcss" runat="server" TextMode="SingleLine" placeholder="Enter Comment..."></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtQuery" ErrorMessage="Write your query"></asp:RequiredFieldValidator><br />
<asp:Button ID="BtnSubmit" runat="server" CssClass="btn btn-success pull-right" Text="Send Message" OnClick="BtnSubmit_Click" />
                </div>
</div>
<div class="col-md-6">
           
</div>
                    
                </div>
                </form>
            </div>
    </div>
</div>
            
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <h4>Office Address</h4>
  <p><b>Plot-No:891/935</b></p>
  <p><b>Laxmisagar</b></p>
  <p><b>Bhubaneswar-751006</b></p>
  <p><b>(+91)94378-18395,99388-03287</b></p>
  <p>Email:<b>info@btbasket.com</b></p>
            </address>
            
            </form>
            
        </div>
    </div>
</div>
</asp:Content>

