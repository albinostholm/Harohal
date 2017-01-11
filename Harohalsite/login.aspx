<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="login_form" runat="server">
    <h1>Logga in</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Hem" Value="Hem" NavigateUrl="hem.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <asp:Login ID="Login1" runat="server" Height="157px" onauthenticate="Login1_Authenticate"
               Width="302px" PasswordRequiredErrorMessage="Lösenord krävs för att logga in."
               UserNameRequiredErrorMessage="Användarnamn krävs för att logga in.">
        <HyperLinkStyle BorderStyle="Solid"/>
        <FailureTextStyle BackColor="#DBDBDB" BorderColor="Red"/>
    </asp:Login>

    <asp:LinkButton ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Registrera"/>

    <asp:LinkButton ID="btnGlomt" runat="server" OnClick="btnGlomt_Click" Text="Glömt lösenord"
                    NavigateUrl="glomt_losen.aspx"/>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>