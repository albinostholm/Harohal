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
                <asp:literal ID="litMassor" runat="server">Massör: </asp:literal>
                <asp:literal ID="litTjanst" runat="server">Tjänst: </asp:literal>
                <asp:literal ID="litStarttid" runat="server">Starttid: </asp:literal>
                <asp:literal ID="litSluttid" runat="server">Slutttid: </asp:literal>        
                <asp:CheckBox ID="cbxBokning" runat="server"></asp:CheckBox>
            </ItemTemplate>         
        </asp:Repeater>

        <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" style="float:right;"/>
        <asp:Button ID="btnBytLosen" runat="server" Text="Byt lösenord" style="float:right;" OnClick="btnBytLosen_Click"/>
    </div>
</form>
</body>
</html>
