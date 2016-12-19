<%@ Page Language="C#" AutoEventWireup="true" CodeFile="om_oss.aspx.cs" Inherits="om_oss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Om Oss</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Om Oss</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <div style="float:left; width: 60%; height: 150px;">
        <h2><asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label></h2>

        <div style="border:1px solid black;">
            <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
        </div>

        <p>Telefon: 112, Fax: 300, Adress: Dankvägen 42</p>

        <img src="NÅNTINGNÅNTING.png" alt="GOOGLEMAPS"
             style="height: 175px; width: 375px; float:left; margin-left:10px;"/>
    </div>
</form>
</body>
</html>
