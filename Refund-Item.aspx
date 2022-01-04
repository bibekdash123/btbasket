<%@ Page Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="Refund-Item.aspx.cs" Inherits="MyBazarUser_RefundItem" Title="Refund & Return | btbasket.com" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <ol class="breadcrumb">
               <li><a href="account">Home</a></li>
               <li class="active">Return/Refund</li>
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
     <div class="row">
        <div class="col-md-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Refund Request Submitted Successfully....
        </div>
        </asp:Panel>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-2">
        <asp:HiddenField ID="HiddenDate" runat="server" />
        <asp:HiddenField ID="HiddenMonth" runat="server" />
        </div>
        <div class="col-md-12 col-sm-12">
            <div class="card">
            <div class="card-header">
                <div class="card-title">
                   <h5>RETURN/REFUND FORM</h5>
                </div>
            </div>
                
               <div class="card-body">
                <div class="form-group">
                    <label>From</label>
                    <asp:TextBox ID="TxtFrom" CssClass="form-control" runat="server" placeholder="User Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFrom" runat="server" ControlToValidate="TxtFrom" ErrorMessage="From Address Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>To</label>
                    <asp:TextBox ID="TxtTo" CssClass="form-control" runat="server" Text="customercare@btbasket.com" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredTo" runat="server" ControlToValidate="TxtTo" ErrorMessage="To Address Required"></asp:RequiredFieldValidator>
                </div>
                   <div class="form-group">
                    <label>Order-ID</label>
                    <asp:TextBox ID="TxtOrderId" CssClass="form-control" runat="server" Text=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredOrderId" runat="server" ControlToValidate="TxtOrderId" ErrorMessage="Order Id Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Refund Or Return</label>
                    <asp:DropDownList ID="DdlRefund" runat="server"  CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Make A Selection" ControlToValidate="DdlRefund" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Message</label>
                    <asp:TextBox ID="TxtMessage" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Write Yor Query"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredMessage" runat="server" ControlToValidate="TxtMessage" ErrorMessage="Message Required"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group text-center">
                    <asp:Button ID="BtnSend" CssClass="btn btn-success" runat="server" Text="Send Query" OnClick="BtnSend_Click" />
                </div>
            </div>
            
            </div>
           
        </div>
        
    </div>
    
</asp:Content>

