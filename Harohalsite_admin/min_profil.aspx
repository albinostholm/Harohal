<%@ Page Language="C#" AutoEventWireup="true" CodeFile="min_profil.aspx.cs" Inherits="min_profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profil</title>
</head>
<body>
<form id="form1" runat="server">
    <h1>Din profil</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Hem" Value="Hem" NavigateUrl="hem.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <h2>Din info</h2><br />

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
    
    <h2 style="float:left; clear:left;">Dina bokningar</h2><br />

    <asp:Repeater ID="rptBokningar" runat="server">
        <ItemTemplate>
            <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; clear:left; ">
                <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
                    <li>Massör: <%# Eval("namn") %></li>
                    <li>Tjänst: <%# Eval("tjanst") %></li>
                    <li>Datum: <%# Eval("Datum") %></li>
                    <li>Starttid: <%# Eval("startTid") %></li>
                    <li>Sluttid: <%# Eval("slutTid") %></li>
                </ul>
                <asp:CheckBox ID="cbxAvboka" runat="server" Text="Avboka" style="float:right"/>
                <asp:HiddenField ID="hfOrderID" runat="server" Value='<%# Eval("orderID") %>' />
            </div>
        </ItemTemplate>         
    </asp:Repeater>

    <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" style="float:left; clear:left" OnClick="btnAvboka_Click"/><br />
    <asp:Button ID="btnLogout" runat="server" Text="Logga ut" style="float:right;" OnClick="btnLogout_Click"/>
</form>
</body>
</html>