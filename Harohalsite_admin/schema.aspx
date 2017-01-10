<%@ Page Language="C#" AutoEventWireup="true" CodeFile="schema.aspx.cs" Inherits="schema" %>

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
            <asp:MenuItem Text="min_profil" Value="min_profil" NavigateUrl="min_profil.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Bokningar" Value="Bokningar" NavigateUrl="a_bokningar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="tjänster" Value="tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            
        </Items>
    </asp:Menu>

         <asp:Repeater ID="rptBokningar" runat="server">
        <ItemTemplate>
            <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
                    <li>Massör: <%# Eval("MassorNamn") %></li>
                    <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                    <li>Datum: <%# Eval("Datum") %></li>
                    <li>Starttid: <%# Eval("startTid") %></li>
                    <li>Sluttid: <%# Eval("slutTid") %></li>
                </ul>
                <asp:CheckBox ID="cbxAvboka" runat="server" Text="Avboka" style="float:right"/>
                <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>' />
            </div>
        </ItemTemplate>         
    </asp:Repeater>



        <asp:Panel ID="panEditBokning" runat="server">
            <asp:Label ID="lblStartTid" runat="server" Text="StartTid"></asp:Label>
            <asp:TextBox ID="tbStartTid" runat="server" ></asp:TextBox>
            <asp:Label ID="lbSlutTid" runat="server" Text="SlutTid"></asp:Label>
            <asp:TextBox ID="tbSlutTid" runat="server" ></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>

        
        <asp:Panel ID="panVisaBokningslista"  runat="server">
        <asp:Repeater ID="repBokningar" runat="server" OnItemCommand="repBokningar_ItemCommand">
        <ItemTemplate>
            <section>
                <div style="display:inline; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <h1><%# Eval("startTid") %></h1>
                    <asp:LinkButton ID="lbVisaBokning" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "orderID" )%>'><%# Eval("startTid") %></asp:LinkButton>
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;">
                        <%# Eval("slutTid") %>
                    </p>
                       
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
            </asp:Panel>



        <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" style="float:right;" OnClick="btnAvboka_Click"/>

    <div>
    
    </div>



    </form>
</body>
</html>
