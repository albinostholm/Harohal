<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boka.aspx.cs" Inherits="boka" %>

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

        <asp:Repeater runat="server" ID="repMassor">
            <ItemTemplate>
              <div style="width:10%; border:1px solid black; float:left;">
                  <h2>Massörer</h2>
                    <p>massage beskrivning</p>
                  <asp:CheckBox ID="CheckBox1" runat="server" />
              </div>
                </ItemTemplate>
        </asp:Repeater>
        <br />
        <asp:Repeater runat="server" ID="repTjanst">
            <ItemTemplate>
              <div style="width:10%; border:1px solid black; float:left;">
                  <h2>Massörer</h2>
                    <p>Tjänst beskrivning</p>
                  <asp:CheckBox ID="CheckBox1" runat="server" />
              </div>
                </ItemTemplate>
        </asp:Repeater>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        //valda bokningar typ xd
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Boka" NavigateUrl="bekrafta_bokning.aspx" />
    </form>
</body>
</html>
