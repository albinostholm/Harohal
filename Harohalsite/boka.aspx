<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boka.aspx.cs" Inherits="boka" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Boka</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
<form id="form1" runat="server">
    <asp:HiddenField runat="server" ID="hfWeek"/>
    <asp:HiddenField runat="server" ID="hfYear"/>

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
                            <a class="navbar-brand" href="Default.aspx" ><img alt="Logo" src="image/logo.png" height="30" /></a><h1 class="navbar-text">Boka Tid</h1>
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
        <asp:Repeater runat="server" ID="repMassor">
            <ItemTemplate>
                     <div class="col-md-3">
                        <h2><%# Eval("namn") %></h2>
                        <p><%# Eval("beskrivning") %></p>
                    </div>
                    <asp:HiddenField ID="hfMassor" runat="server" Value='<%# Eval("anstalldID") %>'/>
            </ItemTemplate>
        </asp:Repeater>
        <asp:DropDownList ID="ddlMassor" runat="server" OnSelectedIndexChanged="ddlMassor_SelectedIndexChanged"
                      AutoPostBack="true"></asp:DropDownList>
    </div>

    

    <div class="row">
        <asp:Repeater runat="server" ID="repTjanster">
            <ItemTemplate>
                <div class="col-md-3">
                    <h2><%# Eval("namn") %></h2>
                    <p><%# Eval("beskrivning") %></p>
                    <ul>
                        <li><%# Eval("pris") %> Kr</li>
                        <li><%# Eval("Tid") %> Min</li>
                    </ul>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:DropDownList ID="ddlTjanst" runat="server"></asp:DropDownList>
    </div>

    
    <div class="row">
        <div class="col-md-4">
            <label>Vilken dag vill do boka på? </label>
            <asp:DropDownList ID="ddlDay" runat="server">
                <asp:ListItem Text="Mån" Value="Monday"></asp:ListItem>
                <asp:ListItem Text="Tis" Value="Tuesday"></asp:ListItem>
                <asp:ListItem Text="Ons" Value="Wednesday"></asp:ListItem>
                <asp:ListItem Text="Tor" Value="Thursday"></asp:ListItem>
                <asp:ListItem Text="Fre" Value="Friday"></asp:ListItem>
                <asp:ListItem Text="Lör" Value="Saturday"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="col-md-4">
            <label>Skriv tiden du vill börja(HH:MM): </label>
            <asp:TextBox ID="tbTime" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Text="Boka" OnClick="btnBekrafta" style="float:left"/>
            <asp:Literal ID="litErrMsg" runat="server" Visible="false">Denna tiden är inte tillgänglig</asp:Literal>
        </div>
    </div>

    <div class="row">
        <asp:Button ID="btnDeWeek" runat="server" OnClick="btnDeWeek_Click" Enabled="true"/>
        <asp:Label ID="lblWeek" runat="server"></asp:Label>
        <asp:Button ID="btnInWeek" runat="server" OnClick="btnInWeek_Click" Enabled="true"/>
    </div>

    <div class="row">
        <DayPilot:DayPilotCalendar ID="DayPilotCalendar1" runat="server" Days="6"
                                   BusinessBeginsHour="9"
                                   BusinessEndsHour="22"                                
                                   HeightSpec="BusinessHoursNoScroll"
                                   DataStartField="startTid"
                                   DataEndField="slutTid"
                                   DataTextField="namn"
                                   DataValueField="schemaID"
                                   style="top: 130px; left: -136px"/>
    </div>
    
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
