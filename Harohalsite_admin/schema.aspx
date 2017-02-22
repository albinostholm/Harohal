<%@ Page Language="C#" AutoEventWireup="true" CodeFile="schema.aspx.cs" Inherits="schema" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <header></header>
    <h1>Schema</h1>
    <asp:HiddenField runat="server" ID="hfWeek"/>
	<asp:HiddenField runat="server" ID="hfYear"/>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="min_profil.aspx"></asp:MenuItem>           
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Schema" Value="Schema" NavigateUrl="schema.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <div style="clear: left; position: center">
        <asp:Button ID="btnDeWeek" runat="server" OnClick="btnDeWeek_Click" Enabled="true"/>
        <asp:Label ID="lblWeek" runat="server"></asp:Label>
        <asp:Button ID="btnInWeek" runat="server" OnClick="btnInWeek_Click" Enabled="true"/>
    </div>
    <DayPilot:DayPilotCalendar ID="DayPilotCalendar1" runat="server" Days="6"
                                   DataStartField="startTid"
                                   DataEndField="slutTid"
                                   DataTextField="namn"
                                   DataValueField="schemaID"
                                   style="top: 130px; left: -136px"/>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
