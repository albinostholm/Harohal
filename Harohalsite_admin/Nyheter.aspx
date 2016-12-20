<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nyheter.aspx.cs" Inherits="Nyheter" %>

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
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="a_boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="a_massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="a_tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="a_om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="a_min_profil.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="Artiklar.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
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
                <div style="display:inline; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <h1><%# Eval("rubrik") %></h1>
                    <!--<h1><asp:HyperLink ID="hlVisaNyhet" runat="server" NavigateUrl= '<%# Eval("nyhetsID") %>' ><%# Eval("rubrik") %></asp:HyperLink></h1> -->
                    <asp:LinkButton ID="lbVisaNyhet" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "nyhetsID" )%>'><%# Eval("rubrik") %></asp:LinkButton>
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
