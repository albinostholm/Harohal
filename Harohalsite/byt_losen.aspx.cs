using System;

public partial class glomt_losen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    //Byter lösenord för den givna användaren
    protected void btnBytLosen_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        anvandare anv = new anvandare();

        string newPassword;

        anv.Epost = tbEpost.Text.ToString();
        anv.Password = tbpw.Text.ToString();

        newPassword = bd.RestorePassword(anv);
        Response.Redirect("login.aspx");

    }
}
