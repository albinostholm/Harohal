<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tjänster</title>
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
                            <a class="navbar-brand" href="hem.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Tjänster</h1>
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
                <div class="col-md-8">
                    <asp:Repeater ID="repTjanster" runat="server">
                        <ItemTemplate>
                            <img src="<%# Eval("bild") %>" alt="tjanst"/>
                            <h1><%# Eval("namn") %></h1>
                            <p><%# Eval("beskrivning") %></p>

                            <ul>
                                <li>Pris: <%# Eval("pris") %> kr</li>
                                <li>Tid: <%# Eval("tid") %> min</li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label>
                    <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
                </div>
            </div>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
