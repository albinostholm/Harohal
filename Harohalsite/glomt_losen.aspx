<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glomt_losen.aspx.cs" Inherits="glomt_losen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
<form id="form1" runat="server">

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
                            <a class="navbar-brand" href="hem.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Återställ Lösenord</h1>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">                       
                                <li><a href="hem.aspx">Hem</a></li>
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
        </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
