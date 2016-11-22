<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <header></header>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu> 

        <asp:Login ID="Login1" runat="server" Height="157px" OnAuthenticate="Login1_Authenticate" Width="302px">
        </asp:Login>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrera" />
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Glömt lösenord" />
    </form>
</body>
</html>
