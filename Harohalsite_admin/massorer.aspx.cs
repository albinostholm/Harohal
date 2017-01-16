using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class a_massorer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassorer();
            updateMenu();
            panEditMassor.Visible = false;

        }
    }

    //Updaterar navigeringsmenyn beroende på ifall man är inloggad
    private void updateMenu()
    {
        if (Session.Count > 0)
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Logga in")
                {
                    mItem.Text = "Min Profil";
                    mItem.NavigateUrl = "min_profil.aspx";
                }
            }
        }
        else
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Min Profil")
                {
                    mItem.Text = "Logga In";
                    mItem.NavigateUrl = "login.aspx";
                }
            }
        }
    }

    //Fyller ut repeatern med massörinfo
    private void FillMassorer()
    {
        repMassorer.DataSource = massorList();
        repMassorer.DataBind();
    }

    //Hämtar tjänstinfo
    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getMassorInfo();

        return dt;
    }

    protected void repMassorer_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblRCtest.Text = e.CommandArgument.ToString();
        panEditMassor.Visible = true;
        // populera  nyheten

    }


    //Hämtar artikeln om massörer
    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cAnvandare a = new cAnvandare();

        a.FirstName = tbForNamn.Text.ToString();
        a.LastName = tbEfterNamn.Text.ToString();
        a.Password = tbBeskrivning.Text.ToString();
        a.UserId = (lblRCtest.Text.ToString());

        bd.updateMassorInfo(a);

        FillMassorer();
    }


    protected void tbNamn_TextChanged(object sender, EventArgs e)
    {

    }

    protected void tbBeskrivning_TextChanged(object sender, EventArgs e)
    {

    }

    
}