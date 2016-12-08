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

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }


    protected void CreateUserWizard1_CreatedUser1(object sender, EventArgs e)
    {

    }


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




        if (cvPassword.IsValid)
        {
            newUserId = bd.CreateUser(anv);
            //ShowUserdata("ss");
        }



        


    }

    protected void ShowUserdata(string UserId)
    {
        BusinessDAL bd = new BusinessDAL();
        anvandare anv = new anvandare();
        anv = bd.getUserData(UserId);
        
        panRegistrera.Visible = false;
        panAfter.Visible = true;
        tbShowFirstName.Text = "NU VISAR VI EFTER REGISTRERA";

    }

}
 