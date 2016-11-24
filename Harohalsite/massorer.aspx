<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>

    <body>
        <form id="form1" runat="server">       
            <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                    <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                    <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                    <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                    <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
             
            <asp:Repeater ID="repMassor" runat="server">
                
            </asp:Repeater>
        </form>
    </body>
</html>
