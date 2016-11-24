<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_massorer.aspx.cs" Inherits="massorer" %>

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
             <h2>Om våra massörer <asp:Button ID="Button1" runat="server" Text="Edit" style="margin-left:420%;" /> </h2>
                    <div style="border:1px solid black;">
                        Here is Annons man XDDDD

                        adfgraegtraefdgrfa grag rfaed grfae graef grae grasg dfasg rasgrt hrtju as ghrtfh terh rgfa rfg ar g
                        ra grag thjt hrth gariggie rghjdthjyhdlfjighpuidrhhuid  udrhhpudr h ypui hhdtpu hdpuith  huidgh  huidg t
                        dtpiu hh dtuih  hduhh puidhf hpidhph hdtlih hdpituhhpuidth hljdthlkjhhedtoh hlidhhlkjdfhhdrfhhpudrhfhi
                        d jf ghpsrh  gpshu gpshugp suhrp ogishgoi h spoi g hjsoih g posih goisrh g pousrhg piusrhgpush      i
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
                    <p style="float:right; text-align:left; margin-left:1%;">Lorem ipsum dolor sit amet, in qui semper quaestio, ex malorum petentium 
                        torquatos vim. An vivendum antiopam praesent vim, vix sumo iudicabit at, et mea assum quaeque scaevola. Et mea quod odio evertitur,
                         qui no adhuc petentium, his no malorum perpetua euripidis. Qui id dicat numquam delectus, quod omnis adipiscing ea mei. Imperdiet oji oji gqepgq0jiojigqegqeojig 
                        oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig ji oji gqegqepgq0jiojigqegqeojig 
                            ji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig 
                        oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig
                        oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji 
                        gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig oji oji gqegqepgq0jiojigqegqeojig
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Edit" style="float:right;" />
                    </p>
                    
                    
                    <ul style="list-style:none; float:left; text-align:left; margin-left: 0px;">
                        <li>Ålder</li>
                        <li>Behandlar Män?</li>
                        <li>Behandlar Kvinnor?</li>
                    </ul>
                </div>
                    
           </section>
          </ItemTemplate>
        </asp:Repeater>    
         
            </form>

       



        
    </body>
</html>
