<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrera.aspx.cs" Inherits="registrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrering</title>
</head>
<body>
<form id="form1" runat="server" onsubmit="">
    <h1>Registrera Dig</h1>

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

    <asp:Panel ID="panRegistrera" Visible="true" runat="server">
        <p>Email</p>
        <asp:TextBox ID="tb_email" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="rf_email" runat="server" ErrorMessage="Email krävs." ControlToValidate="tb_email"></asp:RequiredFieldValidator>
        <br />
        <p>Första och mellannamn</p>
        <asp:TextBox ID="tb_FaMname" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="rf_famname" runat="server" ErrorMessage="Första och mellannamn krävs." ControlToValidate="tb_famName"></asp:RequiredFieldValidator> 
        <br />
        <p>efternamn</p>
        <asp:TextBox ID="tb_lname" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="rf_lname" runat="server" ErrorMessage="Efternamn krävs." ControlToValidate="tb_lname"></asp:RequiredFieldValidator>
        <br />
        <p>personnummer</p>
        <asp:TextBox ID="tb_ssn" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="rf_ssn" runat="server" ErrorMessage="Personnummer krävs." ControlToValidate="tb_ssn"></asp:RequiredFieldValidator>
        <br />
        <p>Lösenord</p> 
        <asp:TextBox ID="tb_pw" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rf_pw" runat="server" ErrorMessage="Lösenord krävs." ControlToValidate="tb_pw"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Olika password" ControlToCompare="tb_pw" ControlToValidate="tb_repeatedPw"></asp:CompareValidator>
        <br />
        <p>Lösenord igen</p>
        <asp:TextBox ID="tb_repeatedPw" runat="server"></asp:TextBox>
        <br />

        <asp:CheckBox ID="cb_avtal" runat="server" text="Jag accepterar avtalet."/><br />
        <asp:CheckBox ID="cb_newsletter" runat="server" text="Jag vill prenumerera på nyhetsbladet."/><br />
        <asp:CheckBox ID="cb_invoice" runat="server" text="Jag tar faktura"/><br />
        <asp:Button ID="btnRegistrera" runat="server" Text="Registrera" OnClick="btnRegistrera_Click" />
    </asp:Panel>
</form>
</body>
</html>
