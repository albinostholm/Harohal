<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bekrafta_bokning.aspx.cs" Inherits="bekrafta_bokning" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
    <section>
        <div style="float:right;">
            <p>InsertWireFrameHere<br/>kostnad:INSERTKOSTNAD</p>
            <asp:Button ID="btnBekrafta" runat="server" Text="Bekräfta bokning" OnClick="btnBekrafta_Click" />
            <asp:Button ID="btnAvbryt" runat="server" Text="Avbryt" OnClick="btnAvbryt_Click"/>
        </div>
    </section>

    <asp:Repeater ID="rptOrder" runat="server">
        <ItemTemplate>
            <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; "> 
                <h2>Bokning</h2>
                    <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
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
</body>
</html>
