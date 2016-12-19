<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tjänster</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Våra tjänster</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
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

    <asp:Repeater ID="repTjanster" runat="server">
        <ItemTemplate>
             <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                 <h1><%# Eval("namn") %></h1>
                 <p><%# Eval("beskrivning") %></p>

                 <ul>
                     <li>Pris: <%# Eval("pris") %> kr</li>
                     <li>Tid: <%# Eval("tid") %> min</li>
                 </ul>
             </div>
        </ItemTemplate>
    </asp:Repeater>
</form>
</body>
</html>
