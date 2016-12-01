<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boka.aspx.cs" Inherits="boka" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <header></header>
    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <div>
        <asp:Repeater runat="server" ID="repMassor">
            <ItemTemplate>
                <div style="width:10%; border:1px solid black; float:left;">
                    <h2><%# Eval("namn") %></h2>
                    <p><%# Eval("beskrivning") %></p>
                    <asp:CheckBox runat="server" ID="cbxMassor"/>
                    <asp:HiddenField ID="hfMassor" runat="server" Value='<%# Eval("anstalldID") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div>
        <asp:Repeater runat="server" ID="repTjanster">
            <ItemTemplate>
                <div style="width:10%; border:1px solid black; float:left;">
                    <h2><%# Eval("namn") %></h2>
                    <p><%# Eval("beskrivning") %></p>
                    <asp:CheckBox runat="server" ID="cbxTjanst"/>
                    <asp:HiddenField ID="hfTjanst" runat="server" Value='<%# Eval("tjanstID") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <DayPilot:DayPilotCalendar ID="DayPilotCalendar1" runat="server" Days="6" DataStartField="startTid" DataEndField="slutTid"
     DataTextField="namn" 
     DataValueField="schemaID"  style="top: 130px; left: -136px" />

    <asp:Button ID="Button1" runat="server" Text="Boka"  OnClick="btnBekrafta"/>
</form>
</body>
</html>
