<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
   
<form id="login_form" runat="server">
    <header></header>
    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="min_profil.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="artiklar" Value="artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <asp:Login ID="Login1" runat="server" Height="157px" onauthenticate="Login1_Authenticate"
               Width="302px" PasswordRequiredErrorMessage="Lösenord krävs för att logga in."
               UserNameRequiredErrorMessage="Användarnamn krävs för att logga in.">
        <HyperLinkStyle BorderStyle="Solid"/>
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:157px;width:302px;">
                            <tr>
                                <td align="center" colspan="2">Logga in</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Användarnamn:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                        ErrorMessage="Användarnamn krävs för att logga in." ToolTip="Användarnamn krävs för att logga in." 
                                        ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Lösenord:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                        ErrorMessage="Lösenord krävs för att logga in." ToolTip="Lösenord krävs för att logga in." 
                                        ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Logga in" ValidationGroup="Login1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <FailureTextStyle BackColor="#DBDBDB" BorderColor="Red"/>
    </asp:Login>
</form>
</body>
</html>
