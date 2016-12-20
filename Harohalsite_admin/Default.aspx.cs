using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

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
            Response.Redirect("Nyheter.aspx");
        }
        else
        {
            e.Authenticated = false;
            Response.Redirect("Default.aspx");
            Page.Controls.Add(new LiteralControl("<p>New<br />Line</p>"));
        }
    }
}