using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrera.aspx");
    }

    protected void btnMinProfi_Click(object sender, EventArgs e)
    {
        Response.Redirect("min_profil.aspx");
    }

    protected void btnGlomt_Click(object sender, EventArgs e)
    {
        Response.Redirect("glomt_losen.aspx");
    }
}