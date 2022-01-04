<%@ Page Language="C#" MasterPageFile="~/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="TransactionHistory.aspx.cs" Inherits="MyBazarUser_TransactionHistory" Title="BTbasket|My Orders" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <style>
        .table-striped tbody th{
    border:1px solid #333;
}
    </style>
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
  
        <div class="table-responsive">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Both">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:TemplateField HeaderText="Sl-No">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField HeaderText="Order-Id" DataField="Order_Id" />
<asp:BoundField HeaderText="Transaction-ID" DataField="Transaction_Id" />
<asp:BoundField HeaderText="Amount" DataField="Transaction_Amount" />
<asp:BoundField HeaderText="Date" DataField="Transaction_Date" />
<asp:BoundField HeaderText="Time" DataField="Transaction_Time" />
<asp:BoundField HeaderText="Status" DataField="Delivery_Status" />
</Columns>   
</asp:GridView>
            </div>
    </div>
    
      </div>  
   
</asp:Content>

