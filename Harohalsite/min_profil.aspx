<%@ Page Language="C#" AutoEventWireup="true" CodeFile="min_profil.aspx.cs" Inherits="min_profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <header></header>
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <div style="display:block; float:left; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
            <ul>
                <li>Namn:</li>
                <li>Adress:</li>
                <li>Kontakt:</li>
                <li>Mail:</li>
            </ul>
        </div>

        <asp:Button ID="Button3" runat="server" Text="Avboka markerade"/>
        <asp:Button ID="Button1" runat="server" Text="Byt lösenord" style="float:left; clear:left;"/>
        <asp:Button ID="Button2" runat="server" Text="Byt liv" style="float:left; clear:left;"/>
    </div>
</form>
</body>
</html>
