<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="t1" runat="server">
            </asp:TextBox>
            <asp:Button ID="b1" runat="server" Text="submit" OnClick="b1_Click" />
        </div>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Rows="4" TextMode="MultiLine" Height="121px" Width="588px"></asp:TextBox>
    </form>
</body>
</html>
