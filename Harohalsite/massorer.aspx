<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>

    <body>
            <form id="form1" runat="server">       
                <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Boka" Value="Boka"></asp:MenuItem>
                        <asp:MenuItem Text="Massörer" Value="Massörer"></asp:MenuItem>
                        <asp:MenuItem Text="Tjänster" Value="Tjänster"></asp:MenuItem>
                        <asp:MenuItem Text="Om Oss" Value="Om Oss"></asp:MenuItem>
                        <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
        
                <asp:Repeater ID="rptMassor" runat="server">           
                    <ItemTemplate>                                  
                        <div style="height:100%; width:60%; border-style:solid; border-color:black;">
                            <img src="image/xd.png" alt="MassörNamn" style="float:left; width:150px; height:150px; margin-top:58px;">

                            <h1 id="namn" style="margin-top:0px; margin-left:160px;"><% =ma.Name %></h1>

                            <p id="description" style="float:right; text-align:left; margin-left:1%;"><% =ma.Description %></p>
                              
                            <ul style="list-style:none; float:left; text-align:left;">
                                <li>Ålder: <% =ma.Age %></li>
                                <li>Behandlar Män: <% =ma.TreatsMen %></li>
                                <li>Behandlar Kvinnor: <% =ma.TreatsWomen %></li>
                            </ul>
                        </div> 
                    </ItemTemplate>
                </asp:Repeater>          
            </form>
    </body>
</html>
