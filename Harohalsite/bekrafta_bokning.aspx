<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bekrafta_bokning.aspx.cs" Inherits="bekrafta_bokning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bekräfta bokningar</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Bekräfta din nya bokning</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Hem" Value="Hem" NavigateUrl="hem.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <div style="float:right;">
        <p>TODO lägg till kostnad</p><br/>
        <asp:Button ID="btnBekrafta" runat="server" Text="Bekräfta bokning" OnClick="btnBekrafta_Click"/>
        <asp:Button ID="btnAvbryt" runat="server" Text="Avbryt" OnClick="btnAvbryt_Click"/>
    </div>

    <asp:Repeater ID="rptOrder" runat="server">
        <ItemTemplate>
            <div style="display:block; clear:left; float:left;border:1px solid black;">
                <h2>Bokning</h2>
                <ul style="float:left;">
                    <li>Massör: <%# Eval("MassorNamn") %></li>
                    <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                    <li>Datum: <%# Eval("Datum") %></li>
                    <li>Starttid: <%# Eval("startTid") %></li>
                    <li>Sluttid: <%# Eval("slutTid") %></li>
                </ul>
                <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>'/>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
</body>
</html>