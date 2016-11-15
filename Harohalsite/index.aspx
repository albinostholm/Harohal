<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
        <div><asp:ListBox ID="lstbNyhet1" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox><asp:ListBox ID="lstbAnnons1" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox></div>
        <div><asp:ListBox ID="lstbNyhet2" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox><asp:ListBox ID="lstbAnnons2" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox></div>
        <div><asp:ListBox ID="lstbNyhet3" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox><asp:ListBox ID="lstbAnnons3" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox></div>
        <div><asp:ListBox ID="lstbNyhet4" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox></div>
        <div><asp:ListBox ID="lstbNyhet5" runat="server" Height="121px" style="margin-top: 1px" Width="324px"></asp:ListBox></div>
    </form>
</body>
</html>

