<%@ Page Language="C#" AutoEventWireup="true" CodeFile="min_profil.aspx.cs" Inherits="min_profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profil</title>
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
                            <a class="navbar-brand" href="hem.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Min Profil</h1>
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
                <div class="col-md-5">
                    <h2>Din info</h2>
                </div>
                <div class="col-md-5">
                    <h2>Dina Uppkommande bokningar</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblFornamn" runat="server" Text="Label">Förnamn:
                        <asp:TextBox ID="tbxFornamn" runat="server" Enabled="false"></asp:TextBox> 
                    </asp:Label><br />
                    <asp:Label ID="lblEfternamn" runat="server" Text="Label">Efternamn:
                        <asp:TextBox ID="tbxEfternamn" runat="server" Enabled="false"></asp:TextBox> 
                    </asp:Label><br />
                    <asp:Label ID="lblSSN" runat="server" Text="Label">PersonNR:
                        <asp:TextBox ID="tbxSSN" runat="server" Enabled="false"></asp:TextBox> 
                    </asp:Label><br />
                    <asp:Label ID="lblMail" runat="server" Text="Label">Mail:
                        <asp:TextBox ID="tbxMail" runat="server" Enabled="false"></asp:TextBox> 
                    </asp:Label><br />
                    <asp:Label ID="lblNewsletter" runat="server" Text="Label">Nyhetsbrev: 
                        <asp:CheckBox ID="cbxNewsLetter" runat="server" Enabled="false"/>
                    </asp:Label><br />
                    <asp:Label ID="lblFaktura" runat="server" Text="Label">Faktura:
                        <asp:CheckBox ID="cbxFaktura" runat="server" Enabled="false"/>
                    </asp:Label><br />
                
                    <asp:Button ID="btnEditinfo" runat="server" Text="Redigera din info" style="float:left; clear:left" OnClick="btnEditinfo_Click" />
                    <asp:Button ID="btnSaveinfo" runat="server" Text="Spara" OnClick="btnSaveInfo_Click" Visible="false" style="float:left; clear:left"/>
                    <asp:Button ID="btnCancelEdit" runat="server" Text="Avbryt Ändringarna" OnClick="btnCancelEdit_Click" Visible="false" style="float:left; clear:left"/>
                    <asp:Button ID="btnBytLosen" runat="server" Text="Byt lösenord" style="float:left; clear:left" OnClick="btnBytLosen_Click"/>
                </div>

            
                <div class="col-md-5">
                    <asp:Repeater ID="rptBokningar" runat="server">
                        <ItemTemplate>
                                <ul>
                                    <li>Massör: <%# Eval("MassorNamn") %></li>
                                    <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                                    <li>Datum: <%# Eval("Datum") %></li>
                                    <li>Starttid: <%# Eval("startTid") %></li>
                                    <li>Sluttid: <%# Eval("slutTid") %></li>
                                </ul>
                                <asp:CheckBox ID="cbxAvboka" runat="server" Text=""/>
                                <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>' />
                        </ItemTemplate>         
                    </asp:Repeater>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" OnClick="btnAvboka_Click"/>
                    <asp:Button ID="btnLogout" runat="server" Text="Logga ut" OnClick="btnLogout_Click"/>
                </div>
            </div>
            <asp:Repeater ID="rptOldBokningar" runat="server">
                        <ItemTemplate>
                                <p>gammal bokning</p>
                                <ul>
                                    <li>Massör: <%# Eval("MassorNamn") %></li>
                                    <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                                    <li>Datum: <%# Eval("Datum") %></li>
                                    <li>Starttid: <%# Eval("startTid") %></li>
                                    <li>Sluttid: <%# Eval("slutTid") %></li>
                                </ul>
                                <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>' />
                        </ItemTemplate>         
                    </asp:Repeater>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
