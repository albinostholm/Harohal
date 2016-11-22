<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bekrafta_bokning.aspx.cs" Inherits="bekrafta_bokning" %>

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
                <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu> 
                <section>
            <div style="float:right;">
                <p>InsertWireFrameHereoteooteoteote<br />kostnad:INSERTKOSTNADHERE???????</p>
                <asp:Button ID="Button1" runat="server" Text="Bekräfta bokning" />
                <asp:Button ID="Button2" runat="server" Text="Avbryt" />
            </div>
        </section>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <div style="border: 1px solid black;display:inline-block; margin-right:35%;">
                <img src="massörellerngtvetintevaderiktänktesig.bildjävel" alt="massörellerngtvetintevaderiktänktesig.bildjävel" />
                <h2>Bokningar</h2>
                <ul style="list-style:none;">
                    <li>Fotmassage</li>
                    <li>MASSÖR</li>
                    <li>DATUM</li>
                    <li>TID</li>
                </ul>

            </div>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
