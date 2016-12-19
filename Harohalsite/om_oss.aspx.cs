using System;
using System.Web.UI.WebControls;

public partial class om_oss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOneArtikel();
            updateMenu();
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

    //Hämtar artikelinfo för om oss sidan
    private void GetOneArtikel()
    {
        BusinessDAL bDAL = new BusinessDAL();
        artikel art = new artikel();
        art = bDAL.getArtikelInfo(3);
        lblRubrik.Text = art.rubrik;
        litBeskrivning.Text = art.beskrivning;
    }
}