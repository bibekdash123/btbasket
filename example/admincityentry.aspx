<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admincityentry.aspx.cs" Inherits="admincityentry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Entry Page</title>
    </head>
<body>
    <form id="form1" runat="server">
    <br />
      
    
 
    <br />
    <br />
    <asp:gridview ID="Gridview1" runat="server" ShowFooter="true" AutoGenerateColumns="false">
        <Columns>
        
        <asp:TemplateField HeaderText="Qunatity">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField> 
          
        
        <asp:TemplateField>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
             <asp:Button ID="ButtonAdd" runat="server" onclick="ButtonAdd_Click" Text="Add New Row" />
            </FooterTemplate>
        </asp:TemplateField>
        </Columns>
</asp:gridview>
        
    
    </form>
</body>
</html>
