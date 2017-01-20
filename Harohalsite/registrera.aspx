<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrera.aspx.cs" Inherits="registrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrering</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
     <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <div class="container">
<form id="form1" runat="server" onsubmit="">

    <div class="row">
        <div class="col-md-12 noPadding"> 
        <header><img  class="img img-responsive"src="image/header.png" alt="header" id="header" /></header>
            </div>
     </div>
    <div class="row">
                <div class="navbar navbar-default navbar" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Default.aspx" ><img id="logo" alt="Logo" src="image/logo.png" /></a><h1 class="navbar-text">Registrering</h1>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">                       
                                <li><a href="Default.aspx">Hem</a></li>
                                <li><a href="boka.aspx">Boka</a></li>                      
                                <li><a href="massorer.aspx">Massörer</a></li>
                                <li><a href="tjanster.aspx">Tjänster</a></li>
                                <li><a href="om_oss.aspx">Om Oss</a></li>
                                <li><a href="Login.aspx">Logga in</a></li>
                            </ul>
                        </div>
                    </div>
                </div> 
            </div>
    <div class="row">
    <asp:Panel ID="panRegistrera" Visible="true" runat="server">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
        <p>Email*</p>
        <asp:TextBox ID="tb_email" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_email" runat="server" ErrorMessage="Email krävs." ControlToValidate="tb_email"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
            </div>
            </div>
        <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Första och mellannamn*</p>
        <asp:TextBox ID="tb_FaMname" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_famname" runat="server" ErrorMessage="Första och mellannamn krävs." ControlToValidate="tb_famName"  CssClass="red"></asp:RequiredFieldValidator> 
        <br />
                </div>
            </div>
               
        <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>efternamn</p>
        <asp:TextBox ID="tb_lname" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_lname" runat="server" ErrorMessage="Efternamn krävs." ControlToValidate="tb_lname"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
                 </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>personnummer</p>
        <asp:TextBox ID="tb_ssn" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_ssn" runat="server" ErrorMessage="Personnummer krävs." ControlToValidate="tb_ssn"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
                  </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Lösenord</p> 
        <asp:TextBox ID="tb_pw" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rf_pw" runat="server" ErrorMessage="Lösenord krävs." ControlToValidate="tb_pw"  CssClass="red"></asp:RequiredFieldValidator>
        <asp:CompareValidator align="right" ID="cvPassword" runat="server" ErrorMessage="Lösenorden matchar inte." ControlToCompare="tb_pw" ControlToValidate="tb_repeatedPw" CssClass="red"></asp:CompareValidator>
        <br />
                      </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Lösenord igen</p>
        <asp:TextBox ID="tb_repeatedPw" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
                    </div>
            </div>
        <div class="row">
            <div class="col-md-8 col-md-push-2">
            <asp:CheckBox ID="cb_avtal" runat="server" text="Jag accepterar avtalet."/><br />
            <asp:CheckBox ID="cb_newsletter" runat="server" text="Jag vill prenumerera på nyhetsbladet."/><br />
            <asp:CheckBox ID="cb_invoice" runat="server" text="Jag tar faktura"/><br />
            <asp:Button ID="btnRegistrera" runat="server" Text="Registrera" OnClick="btnRegistrera_Click" CssClass="btn btn-primary" />
        </asp:Panel>
    </div>    
    </div>
        </div>
</form>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
