<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_hem.aspx.cs" Inherits="a_hem" %>

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
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="a_boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="a_massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="a_tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="a_om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="a_min_profil.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>


    <asp:Repeater ID="repAnnonser" runat="server">
        <ItemTemplate>
            <div style="background-color:yellow; clear:right;float:right;height:auto; width:30%; padding:30px; border:1px solid black;">
                <h2><%# Eval("namn") %></h2>
                <div style="border:1px solid black;">

                    <br/> <br/>

                </div>
                <%# Eval("beskrivning") %>
        </ItemTemplate>
    </asp:Repeater>

    <asp:Repeater ID="repNyheter" runat="server">
        <ItemTemplate>
            <section>
                <div style="display:inline; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <h1><%# Eval("rubrik") %></h1>
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;">
                        <%# Eval("beskrivning") %>
                    </p>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>

</form>
</body>
</html>