<%@ Page Title="Online Grocery Service In India | btbasket" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Payment-Option.aspx.cs" Inherits="MyBazarUser_Payment_Option" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


<div class="row">
    <div class="col-md-12 col-sm-12">
    <asp:Panel ID="PanelAlert" runat="server" Visible="false">
    <div class="alert alert-success">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <h4>Your Order Has Been Succesfully Placed Against Order Number : <asp:Label ID="LblOrderNo" runat="server" CssClass="label label-default"></asp:Label></h4>
    <h5>Order Delivery Expected : </h5>
    <asp:Button ID="Btnalert" runat="server" CssClass="btn btn-danger btn-sm btn-block"  Text="OK" OnClick="Btnalert_Click" />
    </div>
    </asp:Panel>
    </div>
</div>
<section class="mt-3">
<div class="row">
<div class="col-md-3 col-sm-6 col-xs-6">
    <asp:Label ID="Lbltime" runat="server"></asp:Label>
                <asp:HiddenField ID="HiddenCode" runat="server" Value="TRAN" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/home/New-grocery-logo.JPG" Visible="false" />
                <asp:HiddenField ID="HiddenTime" runat="server" />
                <asp:HiddenField ID="HiddenDate" runat="server" />
                <asp:HiddenField ID="HiddenYear" runat="server" />
                <asp:HiddenField ID="HiddenMonth" runat="server" />
                <asp:HiddenField ID="HiddenAdmin" runat="server" Value="7077998587" />
                <asp:HiddenField ID="HiddenCharge" runat="server" />
                <asp:HiddenField ID="HiddenDelivery" runat="server" />
            </div>
<div class="col-md-3 col-sm-6 col-xs-6">
                <asp:Label ID="LblTranId" runat="server" Text="Transaction Id:" Font-Size="15px"></asp:Label>
                <asp:Label ID="LblTranNumber" runat="server" CssClass="btn btn-warning btn-md" Enabled="false"></asp:Label>
            </div>
<div class="col-md-3 col-sm-6 col-xs-6">
                <asp:Label ID="LblOrder" runat="server" Text="Order ID:" Font-Size="15px"></asp:Label>
                <asp:Label ID="LblOrderid" runat="server" CssClass="btn btn-warning btn-md"></asp:Label><br />
            </div>
<div class="col-md-3 col-sm-6 col-xs-6">
                <asp:Label ID="LblTotal" runat="server" Text="Total Price:" Font-Bold="true" Visible="false"></asp:Label>
                <asp:Label ID="LblAmount" runat="server" CssClass="label label-success" Font-Bold="true" Visible="false"></asp:Label>
                
            </div>
</div>

<section class="mt-5">
<div class="row top-buffer1">

<div class="col-md-12 col-sm-12">
    <div class="card">
            <div class="card-header text-center">
                <h6  style="font-size:15px; font-weight:600;line-height:24px;">
                    MODE OF PAYMENT- (PAY ON DELIVERY) - (We Accept CASH,Credit Card,Debit Card,Phone-Pay,Google Pay While Delivering Order At Your Door Step. )
                </h6>
            </div>
            <div class="card-body text-center">
            <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
           
                <asp:Button ID="BtnOrder" CssClass="btn btn-success btn-md btn-block" runat="server" OnClick="BtnOrder_Click" />
                <asp:Image ID="ppimg" runat="server" ImageUrl="~/images/phonepay-QR.jpg" Height="150px" Width="150px" AlternateText="btbasket-phonepay" />
            </div>
           
            <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
            
    </div>
</div>

</div>
</section>
<asp:UpdatePanel ID="updatepanel2" runat="server">
    <ContentTemplate>

<section class="mt-5 billingaddress">
    <div class="row">

        <div class="col-md-6 col-sm-12 col-xs-12">
            <div class="billing-box">
                <h3 class="text-center">Billing Address</h3>
                <div class="form-group">

                    <asp:TextBox ID="TxtName" CssClass="form-control input-md" ReadOnly="true" runat="server"></asp:TextBox>
                </div>
                    <div class="form-group">
                        <asp:TextBox ID="TxteMail" CssClass="form-control input-md" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">

                    <asp:TextBox ID="TxtPhone" CssClass="form-control input-md" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                            <div class="form-group">

                    <asp:TextBox ID="TxtPin" CssClass="form-control input-md" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                <div class="form-group">
                    <asp:TextBox ID="TxtAddress" CssClass="form-control input-md" runat="server" TextMode="MultiLine" ReadOnly="true" ></asp:TextBox>                                               
                </div>
            </div>
    </div>
        <div class="col-md-6 col-sm-12 col-xs-12">
            <div class="billing-box">
                <h3 class="text-center">shipping Address</h3>
        <%--<div class="form-group">
        <asp:TextBox ID="TxtShipName" runat="server" CssClass="form-control input-md" placeholder="Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtShipName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <asp:TextBox ID="TxtShipMail" runat="server" CssClass="form-control input-md" placeholder="Email.."></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtShipMail" ErrorMessage="Mail Required"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <asp:TextBox ID="TxtShipPhone" runat="server" CssClass="form-control input-md" placeholder="Mobile Number.."></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtShipPhone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>                           
        </div>--%>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" Font-Bold="true" Font-Size="15px" ForeColor="#00b545" Text="Add a diffrent delivery address" />
        <div class="form-group">
        <asp:TextBox ID="TxtShipPin" runat="server" CssClass="form-control input-md" placeholder="Pincode.."></asp:TextBox> 
                                       
        </div>
        <div class="form-group">
        <asp:TextBox ID="TxtShipAddress" runat="server" CssClass="form-control input-md" Height="120px" placeholder="Add New Shipping Address.." TextMode="MultiLine"></asp:TextBox>

            </div>
         </div>
        </div>
    </div>
</section>
                     
</ContentTemplate>
</asp:UpdatePanel>
<div class="row">
<div class="col-md-9 pull-left">
<asp:GridView ID="GridView1" runat="server" Visible="false" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" OnRowDataBound="GridView1_RowDataBound" OnRowCreated="GridView1_RowCreated" GridLines="Horizontal">
<AlternatingRowStyle HorizontalAlign="Left" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>

<asp:BoundField HeaderText="Name" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Name" />
<asp:BoundField HeaderText="Weight" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Quantity" />
<asp:BoundField HeaderText="Brand" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Brand" />
<asp:BoundField HeaderText="Description" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Description" />
<asp:BoundField HeaderText="Offer" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Offer" />

<asp:BoundField HeaderText="ID" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" DataField="Product_Id" />

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
        </div>

</asp:Content>

