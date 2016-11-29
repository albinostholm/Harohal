<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header></header>
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal" OnMenuItemClick="Menu_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
         <div style="background-color:yellow; float:right;height:auto; width:30%; padding:30px; margin-right:1%; margin-left:4%; border:1px solid black;">
             <h2>Allmän info</h2>
                    <div style="border:1px solid black;">
                        
                        info,info, info.

                    </div>
                      
                </div>
         <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">           
          <ItemTemplate>             
            <section> 
                                                  
                <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <asp:CheckBox ID="CheckBox1" runat="server" style="float:right;" />
                    <img src="massage.Bild" alt="MassörNamn" style="float:left; width:150px; height:150px; margin-top:58px;">
                    <h1 style="margin-top:30px; margin-left:160px;">Namn</h1>
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;">
                        Tjänt,tjänst,tjänst.
                    </p>
                   
                    <ul style="list-style:none; float:left; text-align:left; ">
                        <li>Namn</li>
                        <li>Tid</li>
                        <li>Pris</li>
                    </ul>
                </div>                 
           </section>
          </ItemTemplate>
        </asp:Repeater>


    </div>
    </form>
</body>
</html>

