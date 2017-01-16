<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bekrafta_bokning.aspx.cs" Inherits="bekrafta_bokning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bekräfta bokningar</title>
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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Bekräfta Bokning</h1>
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
        <div class="col-md-7">
             <asp:Repeater ID="rptOrder" runat="server">
                 <ItemTemplate>
                         <h2>Bokning</h2>
                         <ul style="float:left;">
                             <li>Massör: <%# Eval("MassorNamn") %></li>
                             <li>Tjänst: <%# Eval("TjanstNamn") %></li>
                             <li>Datum: <%# Eval("Datum") %></li>
                             <li>Starttid: <%# Eval("startTid") %></li>
                             <li>Sluttid: <%# Eval("slutTid") %></li>
                             <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>'/>
                         </ul>
                 </ItemTemplate>
             </asp:Repeater>
        </div>
        <div class="col-md-5">
            <asp:Literal ID="litPrice" runat="server">Total Pris: </asp:Literal><br/>
            <asp:Button ID="btnBekrafta" runat="server" Text="Bekräfta bokning" OnClick="btnBekrafta_Click"/>
            <asp:Button ID="btnAvbryt" runat="server" Text="Avbryt" OnClick="btnAvbryt_Click"/>
        </div>
    </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>