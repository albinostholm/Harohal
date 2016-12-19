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
        if (!IsPostBack)
        {
            Session.Abandon();
        }
    }

    //Redirectar dig till registrera.aspx
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrera.aspx");
    }

    //Redirectar dig till glomt_losen.aspx
    protected void btnGlomt_Click(object sender, EventArgs e)
    {
        Response.Redirect("glomt_losen.aspx");
    }

    //Authenticatar dina inloggningsuppgifter
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        anvandare a = new anvandare();
        string sUserId = "";
        a.Epost = Login1.UserName.ToString();
        a.Password = Login1.Password.ToString();
        sUserId = bd.LogIn(a);
        if (sUserId.Length > 1)
        {
            Session.Add("userId", sUserId);
            e.Authenticated = true;
            Session["userid"].ToString();
            Response.Redirect("min_profil.aspx");
        }
        else
        {
            e.Authenticated = false;
            Response.Redirect("login.aspx");
            Page.Controls.Add(new LiteralControl("<p>New<br />Line</p>"));
        }
    }

}