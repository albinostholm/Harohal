﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjanster.aspx.cs" Inherits="index" %>

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

    <div style="background-color:yellow; float:right;height:auto; width:30%; padding:30px; margin-right:1%; margin-left:4%; border:1px solid black;">
        <h2>
            <asp:Label ID="lblRubrik" runat="server" Text="Label"></asp:Label>
        </h2>
        <div style="border:1px solid black;">
            <asp:Literal ID="litBeskrivning" runat="server"></asp:Literal>
        </div>
    </div>

    <asp:Repeater ID="repTjanster" runat="server">
        <ItemTemplate>
            <section>
                <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <img src="image/xd.png" alt="MassörNamn"
                         style="float:left; width:150px; height:150px; margin-top:58px;">
                    <h1 style="margin-top:30px; margin-left:160px;"><%# Eval("namn") %></h1>
                    <asp:CheckBox ID="CheckBox1" runat="server" style="float:right;"/>
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;"><%# Eval("beskrivning") %>
                        <br/>
                    </p>
                    <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
                        <li>Pris <%# Eval("pris") %></li>
                    </ul>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
</form>
</body>
</html>
