<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_hem.aspx.cs" Inherits="a_hem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hem</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Startsida</h1><br/>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="a_boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="a_massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="a_tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="a_om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="a_min_profil.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <asp:Repeater ID="repNyheter" runat="server">
        <ItemTemplate>
            <div style="float:left; border:1px solid black;  clear:right;">
                <h1><%# Eval("rubrik") %></h1>
                <p><%# Eval("beskrivning") %></p>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <asp:Repeater ID="repAnnonser" runat="server">
        <ItemTemplate>
            <div style="float:right; border:1px solid black; clear:right;">
                <h2><%# Eval("namn") %></h2>
                <p><%# Eval("beskrivning") %></p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
</body>
</html>