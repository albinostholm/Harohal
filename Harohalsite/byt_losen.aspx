<%@ Page Language="C#" AutoEventWireup="true" CodeFile="byt_losen.aspx.cs" Inherits="glomt_losen" %>

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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Återställ Lösenord</h1>
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
    
        <div class="row">
            <div class="col-md-8 col-md-push-2">
                <p>Gammalt Lösenord</p>
    <asp:TextBox ID="tbEpost" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

        <div class="row">
            <div class="col-md-8 col-md-push-2">
    <p> Nytt Lösenord</p>
    <asp:TextBox ID="tbpw" runat="server" CssClass="form-control"></asp:TextBox>

    <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Olika lösenord" ControlToCompare="tbpw"
                          ControlToValidate="tbPw2"></asp:CompareValidator>
                </div>
            </div>

        <div class="row">
            <div class="col-md-8 col-md-push-2">
    <p>Nytt lösenord igen</p>

    <asp:TextBox ID="tbPw2" runat="server" CssClass="form-control"></asp:TextBox>
    <br/>
    
                 <a href="#"><asp:Button  class="btn btn-primary" ID="btnBytLosen" runat="server" Text="Byt Lösenord" OnClick="btnBytLosen_Click"/></asp:Button></a>
        </div>
            </div>
        </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
