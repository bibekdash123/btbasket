<%@ Page Title="Give Your Valuable Feedback Here At | btbasket.com" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="MyBazarUser_Contact_Us"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
        
        <div class="col-md-12 col-sm-12">
            <ol class="breadcrumb">
               <li><a href="pc">Home</a></li>
               <li class="active">Contact</li>
            </ol>
        </div>
        
    </div>
         <div class="row">
        <div class="col-md-12 col-sm-12">
            <asp:Panel ID="PanelAlert" runat="server" Visible="false">
            <div class="alert alert-success">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Thanking you for showing intrest.Our Care team will conatct you soon...
        </div>
        </asp:Panel>
        </div>
    </div>
    

   
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <asp:HiddenField ID="HiddenDate" runat="server" />
        </div>
        <div class="col-md-12 col-sm-12">

            <div class="card">
                <div class="card-header">
                    <h5>Give Your Valuable Feedback..</h5>
                </div>
            
                
              <div class="card-body">
                <div class="form-group">
                    <asp:TextBox ID="TxtName" CssClass="modaltxtbox form-control" runat="server" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="TxtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TxtMail" CssClass="modaltxtbox form-control" runat="server" placeholder="@ Email Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="Mail Address Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TxtPhone" CssClass="modaltxtbox form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TxtQuery" CssClass="modaltxtbox form-control" runat="server" TextMode="MultiLine" placeholder="Enter Comment..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="TxtQuery" ErrorMessage="Write your query"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="BtnSubmit" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Send Your Query" OnClick="BtnSubmit_Click" />
                </div>
            </div>
                </div>
                   
</div>
           
        </div>
         
    </div>

</asp:Content>

