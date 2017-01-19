<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tjänster</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <div class="container">
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

                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Tjänster</h1>
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
    <div class="container-fluid">
        <form id="form1" runat="server">
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
                    <h1><asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label></h1>
                    <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
                </div>
            </div>
        </form>
    </div>

    <footer class="top-buffer-lg">
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Kontakta Oss</h3>
                    <ul>
                        <li> <p>Telefon: 112</p> </li>
                        <li> <p>Fax: 3003</p> </li>
                        <li> <p>Adress: Danskvägen 47</p> </li>
                    </ul>
                     <div class="input-append newsletter-box text-center">
                                <a href="#contact" data-toggle="modal"><button class="btn  bg-gray top-buffer-sm" type="button"> Fråga Oss <i class="fa fa-long-arrow-right"> </i> </button></a>
                            </div>  
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Vi Stödjer </h3>
                    <ul>
                        <li> <a href="#"> <img src="/image/MinStoraDag.png" alt="Min Stora Dag" height="35" /></a> </li>
                        <li> <a href="#"> <img src="/image/maskrosbarn.png" alt="Maskrosbarn" height="35" /></a> </li>
                        <li> <a href="#"> <img src="/image/rosabandet.png" alt="Rosa bandet" height="35" /></a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                        <h3> </h3>
                    <ul>
                        <li> <a href="#"> <img src="/image/unicef.png" alt="Unicef" height="35" /> </a> </li>
                        <li> <a href="#"> <img src="/image/SOS-BARNBYAR.png" alt="SOS Barnbyar" height="35" /> </a> </li>                        

                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Öppettider </h3>
                    <ul>
                        <li> <p>Månadag-Fredag : 10:00 - 21:00</p> </li>
                        <li> <p>Lördag : 10:00 - 20:00</p> </li>
                        <li> <p>Söndag : Stängt</p> </li>

                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Harohal. All rights reserved. </p>
            
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
        <section id="modals">
    <div class="modal fade" id="contact" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form  id="contactForm" action="mailto:linusbeck@hotmail.com" method="post" enctype="text/plain">
                    <div class="modal-header">
                        <h4>Kontakta Oss</h4>
                    </div>

                    <div class="modal-body">
                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Namn*</h3>
                                <input class="form-control" id="contactName" rows="1" name="name"></input>
                            </div>

                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Email*</h3>
                                <input class="form-control" id="contactEmail" rows="1" name="email"></input>
                            </div>

                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Fråga*</h3>
                                <textarea class="form-control" id="contactQuestion" rows="4" name="question"></textarea>
                            </div>
                    </div>

                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">Stäng</a>
                        <input type="submit" class="btn btn-primary" data-dismiss="modal"  value="Skicka"/>
                    </div>
                 </form>
            </div>
        </div>
    </div>

  
</section>
        </div>

    <!--Footer taken from http://bootsnipp.com/snippets/featured/e-commerce-footer-responsive -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
