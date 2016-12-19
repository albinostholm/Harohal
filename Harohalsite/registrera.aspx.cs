using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrera : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 

    }

    //Lägger in en ny användare i databasen ifall allt går igenom validering
    protected void btnRegistrera_Click(object sender, EventArgs e)
    {

        string newUserId;
        BusinessDAL bd = new BusinessDAL();
        anvandare anv = new anvandare();

        anv.FirstName = tb_FaMname.Text.ToString();
        anv.LastName = tb_lname.Text.ToString();
        anv.Epost = tb_email.Text.ToString();
        anv.ssn = tb_ssn.Text.ToString();
        anv.Password = tb_pw.Text.ToString();
        anv.newsletter = cb_newsletter.Text.ToString();

<<<<<<< HEAD
=======



>>>>>>> 34adf2e20b6acc03bf3599d8763e2eac60302dc6
        if (cvPassword.IsValid && cb_avtal.Checked)
        {
            newUserId = bd.CreateUser(anv);
            Response.Redirect("min_profil.aspx");
        }
    }

}
 