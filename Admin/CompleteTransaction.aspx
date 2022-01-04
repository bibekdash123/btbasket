<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="CompleteTransaction.aspx.cs" Inherits="MyBazarUser_CompleteTransaction" Title="BTbasket|Complete Transaction" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenId" runat="server" />
            <h2>Completed Orders..</h2>
        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="AddItem.aspx">Home</a></li>
               <li class="active">OrderHistory</li>
            </ol>
        </div>
        <div class="col-md-4">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <asp:Label ID="Lblmsg" runat="server"></asp:Label>
        </div>
        </asp:Panel>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
     
        </div>
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
     
        </div>
    </div>
    <div class="row">
<div class="col-md-10">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Both" onrowdatabound="GridView1_RowDataBound">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<FooterStyle BackColor="#cbf091" ForeColor="black" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<%--<asp:TemplateField HeaderText="Sl-No">
<ItemTemplate>
<%#Container.DataItemIndex+1 %>
</ItemTemplate>
</asp:TemplateField>--%>
<asp:TemplateField HeaderText="ORDER/TRANSACTION ID">
    <ItemTemplate>
<b>Order Id :</b><asp:Label ID="Lblodid1" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Order_Id") %>'></asp:Label>
<b>Transaction Id :</b><asp:Label ID="Lbltranid1" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Transaction_Id") %>'></asp:Label>
    </ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
</asp:TemplateField>

<asp:TemplateField HeaderText="Customer Details" HeaderStyle-ForeColor="Black" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="10%">
<ItemTemplate>
<b>Name:</b><asp:Label ID="Lblname" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Name") %>'></asp:Label><br />
<b>Email:</b><asp:Label ID="lblemail" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Email") %>'></asp:Label>
<br />
<b>Mobile:</b><asp:Label ID="lblmobile" runat="server" Font-Bold="false" ForeColor="Black" Text='<%# Eval("Mobile") %>'></asp:Label><br />               
</ItemTemplate>
<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="10%"></HeaderStyle>
<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="40px"></ItemStyle>
</asp:TemplateField>
<asp:BoundField HeaderText="Amount" DataField="Transaction_Amount"/>
<asp:BoundField HeaderText="Date" DataField="Transaction_Date" />
<asp:BoundField HeaderText="Time" DataField="Transaction_Time" />
<%--<asp:BoundField HeaderText="Status" DataField="Delivery_Status" />--%>
<asp:TemplateField HeaderText="Status">
<ItemTemplate>
<asp:Label ID="Lblstatus" runat="server" Font-Bold="false" ForeColor="Black" Visible="true" Text='<%# Eval("Delivery_Status") %>'></asp:Label>
<h4><span class="label label-success">Paid</span></h4>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Details">
    <ItemTemplate>
<asp:hyperlink id="hyp1" runat="server" navigateurl='<%# "Order-Details.aspx?ID=" + Eval("Order_Id")%>' text="View" CssClass="btn btn-success btn-sm" Target="_blank" />
    </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Customer Bill">
<ItemTemplate>
<asp:hyperlink id="hyp1" runat="server" navigateurl='<%# "Invoice.aspx?ID=" + Eval("Order_Id")%>' Target="_blank" text="Customer Invoice" Font-Bold="true"/>
</ItemTemplate>
<ItemStyle HorizontalAlign="Right" VerticalAlign="Bottom"></ItemStyle>
</asp:TemplateField>

</Columns>   
</asp:GridView>
</div>
</div>  
    <div class="row">
        <div class="col-md-6">
             
    
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
             
        </div>
        <div class="col-md-3">
     
        </div>
        <div class="col-md-3">
    
    
        </div>
        <div class="col-md-3">
               
        </div>
    </div>
    <br />
</asp:Content>

