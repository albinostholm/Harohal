<%@ Page Language="C#" AutoEventWireup="true" CodeFile="om_oss.aspx.cs" Inherits="om_oss" %>

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
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <section>
            <div style="float:left;">
                <p>ABOUT US SOMTING NICE WRITE HERE, JK LOL NOT HERE YOU SHOULD INSERT FROM DATABASDDSDSSSEE</p>
            </div>
        </section>
    
        <div style="float:right;">
        <asp:Repeater runat="server">
            <ItemTemplate>
              <img src="inseiiqeqjetqe.png" alt="qgqepogeqpokgeqpoke"/>
                </ItemTemplate>
        </asp:Repeater>  

    </div>
    </form>
</body>
</html>
