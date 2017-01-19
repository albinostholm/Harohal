<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="hem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Hem</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/main.css"/>
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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Hår och Häl</h1>
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
                <div class="col-md-8"><h1>Nyheter<hr /></h1></div>
                <div class="col-md-4"><h1>Annonser<hr /></h1></div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <asp:Repeater ID="repNyheter" runat="server">
                        <ItemTemplate>
                            <div class="panel panel-default boxPadding">
                                <h1><%# Eval("rubrik") %></h1>
                                <p><%# Eval("beskrivning") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div class="col-md-4">
                    <asp:Repeater ID="repAnnonser" runat="server">
                        <ItemTemplate>
                            <div class="panel panel-default boxPadding">
                                <h2><%# Eval("namn") %></h2>
                                <p><%# Eval("beskrivning") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            

        </form>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>