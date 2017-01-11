<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bekrafta_bokning.aspx.cs" Inherits="bekrafta_bokning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bekräfta bokningar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <h1>Bekräfta din nya bokning</h1>

    <div style="float:right;">
        <asp:Literal ID="litPrice" runat="server">Total Pris: </asp:Literal><br/>
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
            </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>