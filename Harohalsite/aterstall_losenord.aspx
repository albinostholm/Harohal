﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aterstall_losenord.aspx.cs" Inherits="aterstall_losenord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <h2>Du återställer för xxDragonsSlayer97xX</h2>
    <p>Lösen</p>
    <p><input id="Text5" type="text" /></p>
    <p>Upprepa lösen</p>
    <p><input id="Text6" type="text" /></p>
        <asp:Button ID="Button1" runat="server" Text="Byt lösen" />
    </form>
</body>
</html>
