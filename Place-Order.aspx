<%@ Page Title="btbasket | place-order" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Place-Order.aspx.cs" Inherits="MyBazarUser_Place_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<%--<div class="container-fluid">--%>
<div class="row">
            <div class="col-md-3">
                <ol class="breadcrumb">
                    <li><a href="pc">Home</a></li>
                    <li class="active">Checkout</li>
                </ol>
            </div>
            <div class="col-md-1">
                <asp:HiddenField ID="HiddenTime" runat="server" />
                <asp:HiddenField ID="HiddenDate" runat="server" />
                <asp:HiddenField ID="HiddenYear" runat="server" />
                <asp:HiddenField ID="HiddenMonth" runat="server" />
                <asp:HiddenField ID="HiddenCharge" runat="server" />
                <asp:HiddenField ID="HiddenCode" runat="server" Value="TRAN" />
                <asp:HiddenField ID="HiddenAdmin" runat="server" Value="7077998587" />
            </div>
            <div class="col-md-6">
                
                <%--<asp:Label ID="LblTran" runat="server" Text="Transaction #:" Font-Bold="true"></asp:Label>
                <asp:Label ID="LblTranNumber" runat="server" CssClass="label label-success"></asp:Label>--%>
            </div>
            <div class="col-md-2">
                
               
            </div>
            <%--<div class="col-md-2">
            </div>--%>
        </div>
<div class="row top-buffer">
<div class="col-md-2"></div>
<div class="col-md-1"></div>
<div class="col-md-6">
<asp:Label ID="LblOrder" runat="server" Text="Order Number :" Font-Bold="false" Font-Size="medium"></asp:Label>
<asp:Label ID="LblOrderid" runat="server" CssClass="btn btn-success"></asp:Label>

<asp:Label ID="LblTotal" runat="server" Text="Total Amount :" Font-Bold="false" Font-Size="medium"></asp:Label>
<asp:Label ID="LblAmount" runat="server" CssClass="btn btn-success" Font-Size="medium"></asp:Label>
</div>
<div class="col-md-3 pull-left">

</div>
<%--<div class="col-md-1"></div>
<div class="col-md-1 pull-left"></div> --%>     
    </div> 
<div class="row top-buffer1"></div>
<div class="container">
	<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<div class="panel panel-default">         
<ul class="nav panel-tabs">
<li class="active"><a href="#tab1" data-toggle="tab">SignIn</a></li>
<li><a href="#tab2" data-toggle="tab">Signup</a></li>
</ul>
<div class="panel-body">
<div class="tab-content">
<div class="tab-pane active" id="tab1">
<div class="panel-body">
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
<asp:Button ID="BtnLogin" runat="server" Text="LOGIN TO CHECKOUT" TabIndex="0" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" CausesValidation="false" OnClick="BtnLogin_Click"></asp:Button>

</div>
</asp:Panel>
</div>
</div>
<div class="tab-pane" id="tab2">
<div class="panel-body">
<asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister">
<div class="form-group">
<asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" TabIndex="1" Text="SIGNUP & CONTINUE TO CHECKOUT" OnClick="BtnRegister_Click"  CausesValidation="false" />
</div>
<asp:UpdatePanel ID="updatepanel1" runat="server">
    <ContentTemplate>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
<asp:TextBox ID="TxtMail" CssClass="logintxtcss" runat="server" OnTextChanged="TxtMail_TextChanged"  AutoPostBack="true" placeholder="Enter Users Email ID"></asp:TextBox>
</div>
<asp:RegularExpressionValidator ID="RegularExpEmail" runat="server" ErrorMessage="Enter valid email..." ControlToValidate="TxtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
    </ContentTemplate>
</asp:UpdatePanel>
<div class="form-group">        
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
<asp:TextBox ID="TxtName" CssClass="logintxtcss" runat="server" placeholder="User Full Name"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredName" runat="server" CssClass="text-danger" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
<asp:TextBox ID="TxtPhone" CssClass="logintxtcss" runat="server" placeholder="User Mobile Number"></asp:TextBox>
</div>
<asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>

</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
<asp:TextBox ID="TxtPwd" CssClass="logintxtcss" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
</div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<div class="input-group">
<span class="input-group-addon"><span class="glyphicon glyphicon-book"></span></span>
<asp:TextBox ID="TxtAddress" CssClass="logintxtcss" runat="server" placeholder="Expected Shiiping Address"></asp:TextBox>
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
 
</asp:Panel>
            </div>                            

                        </div>
                        
                    </div>
                </div>
</div>
        </div>
<div class="col-md-3"></div>

</div>
</div>
<div class="row top-buffer">
<div class="col-md-5">

</div>
<div class="col-md-2">

</div>
<div class="col-md-5">

</div>

</div>
<div class="row top-buffer">
<div class="col-md-2">

</div>
<div class="col-md-8">
<asp:GridView ID="GridView1" runat="server" Visible="false" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" OnRowDataBound="GridView1_RowDataBound" OnRowCreated="GridView1_RowCreated" GridLines="Horizontal">
<AlternatingRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="Name" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Name" />
<asp:BoundField HeaderText="Weight" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Quantity" />
<asp:BoundField HeaderText="Brand" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Brand" />
<asp:TemplateField HeaderText="Price" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White">
<ItemTemplate>
<asp:TextBox ID="TxtPrice" runat="server" Width="35px" BorderColor="Transparent" Text='<%#Eval("Product_Price")%>'></asp:TextBox>
</ItemTemplate>
<HeaderStyle BackColor="#00B545" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Unit" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White">
<ItemTemplate>
<asp:TextBox ID="TxtQuantity" runat="server" Width="40px" BorderColor="Transparent" ReadOnly="true" Text='<%#Eval("Product_Unit")%>' AutoPostBack="true"></asp:TextBox>
</ItemTemplate>
<HeaderStyle BackColor="#00B545" ForeColor="White" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Total" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White">
<ItemTemplate>
<asp:TextBox ID="TxtTotal" runat="server" Width="40px" ReadOnly="true" BorderColor="Transparent"></asp:TextBox>
</ItemTemplate>
<HeaderStyle BackColor="#00B545" ForeColor="White" />
</asp:TemplateField>
</Columns>
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
</asp:GridView>
</div>
<div class="col-md-2"></div>
</div>
</asp:Content>

