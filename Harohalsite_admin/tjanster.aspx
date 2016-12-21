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
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="default.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="tjänster" Value="tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

       <asp:Panel ID="panEditTjanst" runat="server">
            <asp:Label ID="lblNamn" runat="server" Text="Namn"></asp:Label>
            <asp:TextBox ID="tbNamn" runat="server" OnTextChanged="tbNamn_TextChanged"></asp:TextBox>
            <asp:Label ID="lblBeskrivning" runat="server" Text="Beskivning"></asp:Label>
            <asp:TextBox ID="tbBeskrivning" runat="server" OnTextChanged="tbBeskrivning_TextChanged"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>
    <asp:Panel ID="panVisaTjanstLista" runat="server">
    <asp:Repeater ID="repTjanster" runat="server"  OnItemCommand="repTjanster_ItemCommand">
        <ItemTemplate>

             <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                 <h1><%# Eval("namn") %></h1>
                 <p><%# Eval("beskrivning") %></p>
                <p><%# Eval("tjanstid") %></p>

                 <ul>
                     <li>Pris: <%# Eval("pris") %> kr</li>
                     <li>Tid: <%# Eval("tid") %> min</li>
                 </ul>
                 <asp:LinkButton ID="lbVisaNyhet" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "tjanstid" )%>'>Redigera text</asp:LinkButton>
             </div>                             
        </ItemTemplate>
    </asp:Repeater>
    </asp:Panel>
    <asp:Label ID="lblRCtest" runat="server" Text=""></asp:Label>
</form>
</body>
</html>