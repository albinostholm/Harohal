<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrera.aspx.cs" Inherits="registrera" %>

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
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        
    </form>
    <p>Email</p>
    <p><input id="Text1" type="text" /></p>
    <p>Förnamn och mellannamn</p>
    <p><input id="Text2" type="text" /></p>
    <p>Efternamn</p>
    <p><input id="Text3" type="text" /></p>
    <p>Personnummer(10 siffror)</p>
    <p><input id="Text4" type="text" /></p>
    <p>Lösenord</p>
    <p><input id="Text5" type="text" /></p>
    <p>Lösenord igen</p>
    <p><input id="Text6" type="text" /></p>

    <p>Har läst avtal? inte vi heller</p>
    <asp:CheckBox ID="CheckBox" runat="server" />
    <p>Jag vill inte kanske ha nyhetsbrev på torsdagar var tredje vecka när solen är i moln</p>
    <asp:CheckBox ID="CheckBox2" runat="server" /><br>
    <input id="Button1" type="button" value="Registrera" />
</body>
</html>
