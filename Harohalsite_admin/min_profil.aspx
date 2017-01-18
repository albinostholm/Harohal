<%@ Page Language="C#" AutoEventWireup="true" CodeFile="min_profil.aspx.cs" Inherits="min_profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profil</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <h1>Din profil</h1>

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

    <asp:Panel ID="panEditOrder" runat="server">
        <asp:Label ID="lblMassorNamn" runat="server" Text="MassorNamn"></asp:Label>
        <asp:DropDownList ID="ddlMassor" runat="server"></asp:DropDownList>

        <asp:Label ID="lblTjanstNamn" runat="server" Text="TjanstNamn"></asp:Label>
        <asp:DropDownList ID="ddlTjanster" runat="server"></asp:DropDownList>

	    <asp:Label ID="lblStartTid" runat="server" Text="StartTid"></asp:Label>
        <asp:TextBox ID="tbStartTid" runat="server"></asp:TextBox>
	
	    <asp:Label ID="lblSlutTid" runat="server" Text="SlutTid"></asp:Label>
        <asp:TextBox ID="tbSlutTid" runat="server"></asp:TextBox>
	
        <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
    </asp:Panel>

    <asp:Panel ID="panVisaOrderLista" runat="server">
        <asp:Repeater ID="rptOrders" runat="server" OnItemCommand="rptOrders_ItemCommand">
            <ItemTemplate>
                <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <p><%# Eval("MassorNamn") %></p>
                    <p><%# Eval("TjanstNamn") %></p>
			        <p><%# Eval("startTid") %></p>
			        <p><%# Eval("slutTid") %></p>
				 
                    <asp:LinkButton ID="lbVisaNyhet" runat="server" 
				    CommandArgument='<%#DataBinder.Eval(Container.DataItem, "orderID" )%>'>Redigera order</asp:LinkButton>
                </div>                             
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnAvboka" runat="server" Text="Avboka markerade" style="float:left; clear:left" OnClick="btnAvboka_Click"/><br />
    <asp:Button ID="btnLogout" runat="server" Text="Logga ut" style="float:right;" OnClick="btnLogout_Click"/>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>