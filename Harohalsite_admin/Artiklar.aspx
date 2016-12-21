<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Artiklar.aspx.cs" Inherits="Artiklar" %>

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
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="min_profil.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="tjänster" Value="tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
        <asp:Panel ID="panEditArtikel" runat="server">
            <asp:Label ID="lblRubrik" runat="server" Text="Rubrik"></asp:Label>
            <asp:TextBox ID="tbRubrik" runat="server"></asp:TextBox>
            <asp:Label ID="lblBeskrivning" runat="server" Text="Beskrivning"></asp:Label>
            <asp:TextBox ID="tbBeskrivning" runat="server"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>

        <asp:Panel ID="panVisaArtikellista" runat="server">
        <asp:Repeater ID="repArtiklar" runat="server" OnItemCommand="repArtiklar_ItemCommand">
        <ItemTemplate>
            <section>
                <div style="display:inline; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <h1><%# Eval("rubrik") %></h1>
                    <!--<h1><asp:HyperLink ID="hlVisaArtikel" runat="server" NavigateUrl= '<%# Eval("artikelID") %>' ><%# Eval("rubrik") %></asp:HyperLink></h1> -->
                    <asp:LinkButton ID="lbVisaNyhet" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "artikelID" )%>'><%# Eval("rubrik") %></asp:LinkButton>
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;">
                        <%# Eval("beskrivning") %>
                    </p>
                       
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
        

        
        <asp:Label ID="lblRCtest" runat="server" Text=""></asp:Label>

      </asp:Panel>


    </div>
    </form>
</body>
</html>
