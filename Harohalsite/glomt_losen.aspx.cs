using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class glomt_losen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
<<<<<<< HEAD
=======
    }





    protected void tbEpost_TextChanged(object sender, EventArgs e)
    {

>>>>>>> 34adf2e20b6acc03bf3599d8763e2eac60302dc6
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

    }
}
