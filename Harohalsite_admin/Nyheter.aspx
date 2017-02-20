<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nyheter.aspx.cs" Inherits="Nyheter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header></header>
    <h1>Nyheter</h1>
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

        <asp:TextBox ID="tbNewRubrik" runat="server">Rubrik</asp:TextBox>
        <asp:TextBox ID="tbNewBeskrivning" runat="server">Beskrivning</asp:TextBox>
        <asp:TextBox ID="tbNewTid" runat="server">PubliceradDatum (YYYY-MM-DD)</asp:TextBox>
        <asp:Button ID="btnNewNyhet" runat="server" Text="Skapa ny nyhet" OnClick="btnNewNyhet_Click"/>

        <asp:Panel ID="panEditNyhet" runat="server">
            <asp:Label ID="lblRubrik" runat="server" Text="Rubrik"></asp:Label>
            <asp:TextBox ID="tbRubrik" runat="server"></asp:TextBox>
            <asp:Label ID="lblText" runat="server" Text="Innehåll"></asp:Label>
            <asp:TextBox ID="tbText" runat="server"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>

        <asp:Panel ID="panVisaNyhetslista" runat="server">
        <asp:Repeater ID="repNyheter" runat="server" OnItemCommand="repNyheter_ItemCommand">
        <ItemTemplate>
            <section>
                    <h1><%# Eval("rubrik") %></h1>
                    <p>
                        <%# Eval("beskrivning") %>
                    </p>
                    <asp:LinkButton ID="lbVisaNyhet" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "nyhetsID" )%>'>Redigera text</asp:LinkButton>
                       
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
        

        
        <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label>

      </asp:Panel>


    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
