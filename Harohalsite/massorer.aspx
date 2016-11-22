<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<<<<<<< HEAD
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
         <div style="background-color:yellow; float:right;height:auto; width:30%; padding:30px; margin-right:1%; margin-left:4%; border:1px solid black;">
                    <div style="border:1px solid black;">
                        Here is Annons man XDDDD
                    </div>
                      <div style="border:1px solid black;">
                        Here is Annons man XDDDD
                    </div>
                      <div style="border:1px solid black;">
                        Here is Annons man XDDDD
                    </div>
                      <div style="border:1px solid black;">
                        Here is Annons man XDDDD
                    </div>
                      <div style="border:1px solid black;">
                        Here is Annons man XDDDD
                    </div>
                </div>
               
        <asp:Repeater ID="Repeater1" runat="server">           
          <ItemTemplate>
            <section>                                   
                <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                    <img src="image/xd.png" alt="MassörNamn" style="float:left; width:150px; height:150px; margin-top:58px;">
                    <h1 style="margin-top:30px; margin-left:160px;">Namn</h1>
                    <asp:CheckBox ID="CheckBox1" runat="server" style="float:right;" />
                    <hr style="width:auto; margin-left:auto;">
                    <p style="float:right; text-align:left; margin-left:1%;">Lorem ipsum dolor sit amet, in qui semper quaestio, ex malorum petentium torquatos vim. An vivendum antiopam praesent vim, vix sumo iudicabit at, et mea assum quaeque scaevola. Et mea quod odio evertitur, qui no adhuc petentium, his no malorum perpetua euripidis. Qui id dicat numquam delectus, quod omnis adipiscing ea mei. Imperdiet comprehensam ex eum. Ius case quaerendum adversarium eu, cum te minimum insolens, postea quodsi usu et.

                                Cetero senserit inciderint ad eos. Soluta pertinacia voluptaria vis eu, dico unum mnesarchum cu usu, ne debitis invenire quaerendum est. Cu omittantur intellegebat sea, nec an quem meliore definitiones. No eos placerat torquatos assueverit. Hinc debet graece ei quo.

                                Agam erat congue ne mel. Argumentum intellegebat sed cu, vel justo efficiendi ex. Patrioque rationibus sed in, dicit repudiandae eum et, maiorum placerat dissentiunt eam id. Est agam blandit in, cum copiosae accusamus efficiendi an. Graeco utamur molestiae mei ex, at stet omittam suscipit eos.

                                Sonet suscipit vulputate eum in. Cu mea malis euripidis. Eos ea option nusquam omittam, an dolor labitur denique his. In moderatius mediocritatem duo, has no accusam necessitatibus, sed ne soleat intellegat expetendis.

                                Percipit delicata cu sea, eu mel meis falli pertinax. Malis phaedrum in nec, id sed malis aperiri, ut per feugiat appareat. No aeque facilisi nam. Mei te ullum tacimates voluptatibus, solet labore molestie ex mei, sit ea dictas fastidii. Diam libris pertinacia sea et, et natum solum detracto eum. Et harum impetus scriptorem sit, no graeco dolorum mandamus ius. Partem quaeque ne vim, qui et copiosae recteque euripidis.

                    </p>
                    
                    <ul style="list-style:none; float:left; text-align:left;">
                        <li>Ålder</li>
                        <li>Behandlar</li>
                        <li>Behundlar</li>
                    </ul>
                </div>
           </section>
          </ItemTemplate>
        </asp:Repeater>


       



        
    </form>
</body>
=======
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
>>>>>>> upstream/master
</html>
