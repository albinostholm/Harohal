<%@ Page Language="C#" AutoEventWireup="true" CodeFile="om_oss.aspx.cs" Inherits="om_oss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Om Oss</title>
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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Om Oss</h1>
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
                <asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
                </div>
                <div class="col-md-4">
                    <ul>
                        <li>Telefon: 112</li>
                        <li>Fax: 3003</li>
                        <li>Adress: Danskvägen 47</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <img src="image/google.jpg" alt="GOOGLEMAPS"/>
            </div>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
