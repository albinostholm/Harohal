<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu> 
    </div>
        <div>
            <asp:Login ID="Login1" runat="server"></asp:Login>
        </div>
        
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
