using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class min_profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetUserData();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    private void GetUserData()
    {
        BusinessDAL bDAL = new BusinessDAL();
        anvandare user = new anvandare();
        user = bDAL.getUserData("CF70E916-1FAD-4705-A29E-1BCAF1D513EC");
        namn.Text += user.FirstName + " " + user.LastName;
        mail.Text += user.Epost;
        ssn.Text += user.ssn;
    }

    protected void btnBytLosen_Click(object sender, EventArgs e)
    {
        Response.Redirect("glomt_losen.aspx");
    }
}