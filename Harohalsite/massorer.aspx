<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Massörer</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Våra Massörer</h1>

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

    <div style="background-color:yellow; float:right;border:1px solid black;">
        <h2>
            <asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label>
        </h2>
        <div style="border:1px solid black;">
            <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
        </div>
    </div>

    <asp:Repeater ID="repMassor" runat="server">
        <ItemTemplate>
            <div style="display:block; float: left; clear: left; border:1px solid black;">
                <h1><%# Eval("namn") %></h1>
                <p><%# Eval("beskrivning") %></p>
                
                <ul>
                    <li>Ålder</li>
                    <li>Behandlar Män: <%# Eval("behandlarMan") %></li>
                    <li>Behandlar Kvinnor: <%# Eval("behandlarKvinnor") %></li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
</body>
</html>
