<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hem.aspx.cs" Inherits="hem" %>

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

       <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand"> 
        <ItemTemplate>
            <div style="background-color:yellow; clear:right;float:right;height:auto; width:30%; padding:30px; border:1px solid black;">
              <h2>Om våra massörer</h2>
              <div style="border:1px solid black;">
                 Here is Annons man XDDDD
                <br /> <br />
                adfgraegtraefdgrfa grag rfaed grfae graef grae grasg dfasg rasgrt hrtju as ghrtfh terh rgfa rfg ar g
                ra grag thjt hrth gariggie rghjdthjyhdlfjighpuidrhhuid  udrhhpudr h ypui hhdtpu hdpuith  huidgh  huidg t
                dtpiu hh dtuih  hduhh puidhf hpidhph hdtlih hdpituhhpuidth hljdthlkjhhedtoh hlidhhlkjdfhhdrfhhpudrhfh
                d jf ghpsrh  gpshu gpshugp suhrp ogishgoi h spoi g hjsoih g posih goisrh g pousrhg piusrhgpush      i
              </div>
                      
                </div>
                    </ItemTemplate>
                </asp:Repeater>

          <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">           
            <ItemTemplate>
                <section>                                   
                    <div style="display:inline; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                        <h1>Nyheter</h1>
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
                        </p>
                   </div>


                    
           </section>
          </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
