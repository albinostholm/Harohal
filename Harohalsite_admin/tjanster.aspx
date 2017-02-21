<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tjänster</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <style>
        .red {
            color:red;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <h1>Våra tjänster</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="min_profil.aspx"></asp:MenuItem> 
            
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Schema" Value="Schema" NavigateUrl="schema.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <asp:TextBox ID="tbNewNamn" runat="server">Namn</asp:TextBox>
    <asp:TextBox ID="tbNewBeskrivning" runat="server">Beskrivning</asp:TextBox>
    <asp:TextBox ID="tbNewPris" runat="server">Pris</asp:TextBox>
    <asp:TextBox ID="tbNewTid" runat="server">Tid</asp:TextBox>
    <asp:Button ID="btnNewTjanst" runat="server" Text="Skapa ny tjänst" OnClick="btnNewTjanst_Click"/>

       <asp:Panel ID="panEditTjanst" runat="server">
            <asp:Label ID="lblNamn" runat="server" Text="Namn"></asp:Label>
            <asp:TextBox ID="tbNamn" runat="server"></asp:TextBox>
            <asp:Label ID="lblBeskrivning" runat="server" Text="Beskivning"></asp:Label>
            <asp:TextBox ID="tbBeskrivning" runat="server"></asp:TextBox>

            <asp:Label ID="lblPris" runat="server" Text="Pris"></asp:Label>
            <asp:TextBox ID="tbPris" runat="server"></asp:TextBox>
            <asp:Label ID="lblTid" runat="server" Text="Tid"></asp:Label>

            <asp:TextBox ID="tbTid" runat="server"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>
    <asp:Panel ID="panVisaTjanstLista" runat="server">
    <asp:Repeater ID="repTjanster" runat="server"  OnItemCommand="repTjanster_ItemCommand">
        <ItemTemplate>

                 <h1><%# Eval("namn") %></h1>
                 <p><%# Eval("beskrivning") %></p>

                 <ul>
                     <li>Pris: <%# Eval("pris") %> kr</li>
                     <li>Tid: <%# Eval("tid") %> min</li>
                 </ul>
                 <asp:LinkButton ID="lbVisaNyhet" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "tjanstid" )%>'>Redigera text</asp:LinkButton>                            
        </ItemTemplate>
    </asp:Repeater>
    </asp:Panel>
    <asp:Label ID="lblID" runat="server" Text="" style="display:none;"></asp:Label>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>