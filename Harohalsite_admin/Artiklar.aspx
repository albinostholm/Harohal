<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Artiklar.aspx.cs" Inherits="Artiklar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Artiklar</h1>

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

        <asp:Panel ID="panEditartikel" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Rubrik"></asp:Label>
            <asp:TextBox ID="tbRubrik" runat="server" OnTextChanged="tbRubrik_TextChanged"></asp:TextBox>
            <asp:Label ID="lblText" runat="server" Text="Beskrivning"></asp:Label>
            <asp:TextBox ID="tbText" runat="server" OnTextChanged="tbText_TextChanged"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>

        <asp:Panel ID="panVisaartikellista" runat="server">
            <asp:Repeater ID="repArtiklar" runat="server" OnItemCommand="repArtiklar_ItemCommand">
                <ItemTemplate>
                    <section>
                            <h1><%# Eval("rubrik") %></h1>
                            <p> <%# Eval("beskrivning") %></p>   
                            <asp:LinkButton ID="lbVisaartikel" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "artikelID" )%>'>Redigera text</asp:LinkButton>        
                        </div>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Label ID="lblID" runat="server" Text="" style="display:none;"></asp:Label>
        </asp:Panel>
    
    
    </form>
</body>
</html>
