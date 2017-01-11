<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glomt_losen.aspx.cs" Inherits="glomt_losen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <h1>Återställ ditt lösenord</h1>

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

    <p>Epost</p>

    <asp:TextBox ID="tbEpost" runat="server"></asp:TextBox>

    <p> Nytt Lösenord</p>

    <asp:TextBox ID="tbpw" runat="server"></asp:TextBox>

    <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Olika lösenord" ControlToCompare="tbpw"
                          ControlToValidate="tbPw2"></asp:CompareValidator>

    <p>Nytt lösenord igen</p>

    <asp:TextBox ID="tbPw2" runat="server"></asp:TextBox>
    <br/>
    <asp:Button ID="btnBytLosen" runat="server" Text="Byt Lösenord" OnClick="btnBytLosen_Click"/>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
