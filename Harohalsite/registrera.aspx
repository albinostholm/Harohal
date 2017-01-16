<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrera.aspx.cs" Inherits="registrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrering</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
<form id="form1" runat="server" onsubmit="">

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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Registrering</h1>
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
        </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
