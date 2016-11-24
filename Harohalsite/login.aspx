<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Logga In</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                        <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="~/massorer.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                        <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                        <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/login.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu> 
            </div>      
        </form>
    </body>
</html>
