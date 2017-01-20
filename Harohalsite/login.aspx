<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <div class="container">
<form id="login_form" runat="server">

    <div class="row">
                <div class="navbar navbar-default navbar" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Logga In</h1>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">                       
                                <li><a href="Default.aspx">Hem</a></li>
                                <li><a href="boka.aspx">Boka</a></li>                      
                                <li><a href="massorer.aspx">Massörer</a></li>
                                <li><a href="tjanster.aspx">Tjänster</a></li>
                                <li><a href="om_oss.aspx">Om Oss</a></li>
                                <li><a href="Login.aspx">Logga in</a></li>
                            </ul>
                        </div>
                    </div>
                </div> 
            </div> 
    <div class="row">
    <div class=" col-md-4 col-md-push-4">
        <asp:Login ID="Login1" runat="server" Height="157px" OnAuthenticate="Login1_Authenticate"
            Width="302px" PasswordRequiredErrorMessage="Lösenord krävs för att logga in."
            UserNameRequiredErrorMessage="Användarnamn krävs för att logga in.">
            <HyperLinkStyle BorderStyle="Solid" />
            <LayoutTemplate>
                
                <table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height: 157px; width: 302px;">
                                <tr>
                                    <td align="center" colspan="2"><b>Log In</b> <hr /></td> 
                                                             
                                </tr>
                                
                                <tr>
                                    <td align="right" class="top-buffer-sm">
                                        <asp:Label CssClass="right-buffer-sm" runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="right-buffer-sm" runat="server" ControlToValidate="UserName" ErrorMessage="Anv&#228;ndarnamn kr&#228;vs f&#246;r att logga in." ValidationGroup="Login1" ToolTip="Anv&#228;ndarnamn kr&#228;vs f&#246;r att logga in." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label CssClass="right-buffer-sm" runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="L&#246;senord kr&#228;vs f&#246;r att logga in." ValidationGroup="Login1" ToolTip="L&#246;senord kr&#228;vs f&#246;r att logga in." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right" class="noPadding">
                                        <asp:CheckBox class="checkbox" runat="server" Text="Remember me next time." ID="RememberMe"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red; background-color: #DBDBDB; border-color: Red;">
                                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" class="top-buffer-sm">
                                        <a href="#"><asp:Button class="btn btn-primary" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" ID="LoginButton"></asp:Button></a>
                                        <br/>
                                        <div id="buttonBuffer" class="top-buffer-sm"></div>
                                            <a href="registrera.aspx" class="btn btn-default">Registrera</a>
                                            <a href="byt_losen.aspx" class="btn btn-default">Byt Lösenord</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>

            <FailureTextStyle BackColor="#DBDBDB" BorderColor="Red" />
        </asp:Login>
        </div>
        </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>