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

        <asp:Literal runat="server" ID="namn">Namn: </asp:Literal><br/>
        <asp:Literal runat="server" ID="ssn">Personnr: </asp:Literal><br/>
        <asp:Literal runat="server" ID="mail">Email: </asp:Literal><br/>

        <asp:Repeater ID="rptBokningar" runat="server">
            <ItemTemplate>
                <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
                        <li>Massör: <%# Eval("MassorNamn") %></li>
                        <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                        <li>Datum: <%# Eval("Datum") %></li>
                        <li>Starttid: <%# Eval("startTid") %></li>
                        <li>Sluttid: <%# Eval("slutTid") %></li>
                    </ul>
                    <asp:CheckBox ID="cbxAvboka" runat="server" Text="Avboka" style="float:right"/>
                    <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>' />
                </div>
            </ItemTemplate>         
        </asp:Repeater>

        <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" style="float:right;" OnClick="btnAvboka_Click"/>
        <asp:Button ID="btnBytLosen" runat="server" Text="Byt lösenord" style="float:right;" OnClick="btnBytLosen_Click"/>
    </div>
</form>
</body>
</html>
