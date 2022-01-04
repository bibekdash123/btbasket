<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAfterLogin.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="MyBazarUser_Users" Title="BTbasket|Pending Transaction" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row">
        <div class="col-md-4">
            <asp:HiddenField ID="HiddenId" runat="server" />
        </div>
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="AddItem.aspx">Home</a></li>
               <li class="active">OrderHistory</li>
            </ol>
        </div>
        <div class="col-md-4">
            
        </div>
    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6">
          <div class="row top-buffer1">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="145px" ShowFooter="True" CssClass="table table-striped" GridLines="Horizontal">
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
<AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
<Columns>
<asp:BoundField HeaderText="Name" DataField="Name" />
<asp:BoundField HeaderText="Email" DataField="Email" />
<asp:BoundField HeaderText="Mobile Number" DataField="Mobile" />
<asp:BoundField HeaderText="Address" DataField="Address" />
<asp:BoundField HeaderText="Area Pin" DataField="Pincode" />
</Columns>   
</asp:GridView>

</div>  
        </div>
        <div class="col-md-2"></div>
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

