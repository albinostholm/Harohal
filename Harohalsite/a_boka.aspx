<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_boka.aspx.cs" Inherits="a_boka" %>

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

        <input id="Text1" type="text" />
        <div style="float:left;width:20%; height:50%;">
            <asp:Repeater runat="server" ID="repMassor">
                <ItemTemplate>
                    <div style="width:auto; height:30%; border:1px solid black;"></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

            <div style="float:left;width:40%; height:auto; margin-left:2%; border:1em solid black;">
            <asp:Repeater runat="server" ID="Repeater1">
                <ItemTemplate>
                    <div style="width:auto; height:30%; "></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" style="clear:left;float:left; margin-left:938px;" />

        <div style="float:left; margin-left:5%; width:30%;">
            <p>insert some random shit here I dont really know buut it should be used to edit the box to the left</p>
        </div>
    </form>
</body>
</html>
