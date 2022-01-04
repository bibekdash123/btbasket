<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPayment.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <div class="row">
    	<section>
        <div class="wizard">
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-user"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-credit-card"></i>
                            </span>
                        </a>
                    </li>
                    

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

            <form role="form">
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="step1">
                        <div class="step1">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i></h3>
                    <span class="pull-right">
                        <!-- Tabs -->
                        <ul class="nav panel-tabs">
                            <li class="active"><a href="#tab1" data-toggle="tab">SignIn</a></li>
                            <li><a href="#tab2" data-toggle="tab">Signup</a></li>
                            
                        </ul>
                    </span>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
<div class="tab-pane active" id="tab1">
<div class="panel-body">
<asp:Panel ID="PanelLogin" runat="server" DefaultButton="BtnLogin">
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtMobile"  CssClass="logintxtcss" runat="server" placeholder="Enter Registered Mobile Number"></asp:TextBox>
<%--<label for="first">MOBILE NUMBER</label>--%>
<asp:RequiredFieldValidator ID="RequiredMail" runat="server" CssClass="text-danger" ControlToValidate="TxtMobile" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
<%--</div> --%>             
</div>
<div class="form-group">
<%--<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-4"></div>
<div class="col-md-6">
</div>
</div>--%>
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtPassword" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Enter Registered Password"></asp:TextBox>
<%--<label for="first">PASSWORD</label>--%>
<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
<%--</div> --%>
</div>
<div class="form-group">
<asp:Button ID="BtnLogin" runat="server" Text="LOGIN TO CHECKOUT" TabIndex="0" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" CausesValidation="false" /> </asp:Button>
<%--<asp:Button ID="Btnpwd" runat="server" CssClass="btn btn-link btn-sm" Text="Forget Password" TabIndex="2" OnClick="Btnpwd_Click" CausesValidation="false" />--%>
</div>
</asp:Panel>
</div>
</div>
<div class="tab-pane" id="tab2">
<div class="panel-body">
<asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister">
<asp:UpdatePanel ID="updatepanel1" runat="server">
    <ContentTemplate>
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" AutoPostBack="true" placeholder="Enter Users Email ID"></asp:TextBox>
<%--<label for="first">EMAIL ID</label>--%>
<asp:RegularExpressionValidator ID="RegularExpEmail" runat="server" ErrorMessage="Enter valid email..." ControlToValidate="TxtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<%--</div>--%>
</div>
    </ContentTemplate>
</asp:UpdatePanel>

<div class="form-group">        
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" placeholder="User Full Name"></asp:TextBox>
<%--<label for="first">NAME</label>--%>
<asp:RequiredFieldValidator ID="RequiredName" runat="server" CssClass="text-danger" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
<%--</div>--%>
</div>
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" placeholder="User Mobile Number"></asp:TextBox>
<%--<label for="first">MOBILE NUMBER</label>--%>
<asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
<%--</div>--%>
</div>
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtPwd" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
<%--<label for="first">PASSWORD</label>--%>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
<%--</div>--%>
</div>
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtAddress" CssClass="logintxtcss" runat="server" placeholder="Expected Shiiping Address"></asp:TextBox>
<%--<label for="first">SHIPPING ADDRESS</label>--%>
<asp:RequiredFieldValidator ID="RequiredAddress" runat="server" CssClass="text-danger" ControlToValidate="TxtAddress" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
<%--</div>--%>
</div>
<div class="form-group">
<%--<div class="has-float-label">--%>
<asp:TextBox ID="TxtPin" CssClass="logintxtcss" runat="server" placeholder="Area Pincode"></asp:TextBox>
<%--<label for="first">AREA PINCODE</label>--%>
<asp:RequiredFieldValidator ID="RequiredPin" runat="server" CssClass="text-danger" ControlToValidate="TxtPin" ErrorMessage="Pin Number Required"></asp:RequiredFieldValidator>
<%--</div>--%>
</div>
<div class="form-group">
<asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" TabIndex="1" Text="SIGNUP & CONTINUE TO CHECKOUT" />

</div> 
</asp:Panel>
            </div>                            

                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
<div class="col-md-2"></div>

</div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-success next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step2">
                        <div class="step2">
                            <div class="step_21">
                                <div class="row">
                                   
                                </div>
                            </div>
                            <div class="step-22">
                            
                            </div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-success next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    
                    <div class="tab-pane" role="tabpanel" id="complete">
                        <div class="step44">
                            <h5>Completed</h5>
                            
                          
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </section>
   </div> 
</asp:Content>

