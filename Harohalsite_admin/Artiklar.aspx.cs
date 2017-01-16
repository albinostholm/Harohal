//beckman

using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
public partial class Artiklar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillArtiklar();
            updateMenu();
            panEditartikel.Visible = false;
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
    private DataTable GetArtiklar()
    {
        AdminDAL aDAL = new AdminDAL();
        DataTable dt;
        dt = aDAL.getArtiklar();
        return dt;
    }

    private void FillArtiklar()
    {
        repArtiklar.DataSource = GetArtiklar();
        repArtiklar.DataBind();   
    }

    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
         AdminDAL aDAL = new AdminDAL();
        cArtikel a = new cArtikel();

        a.beskrivning = tbText.Text.ToString();
        a.rubrik = tbRubrik.Text.ToString();
        a.id = (lblID.Text.ToString());

        aDAL.updateArtikelInfo(a);

        FillArtiklar();
        panEditartikel.Visible = false;
    }

    protected void repArtiklar_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblID.Text = e.CommandArgument.ToString();
        panEditartikel.Visible = true;

        //Hämta data från tabellen Artikel med id = e.CommandArgument.ToString();
        //Fyll tectboxarna med data frå proceduren
        BusinessDAL bDAL = new BusinessDAL();
        cArtikel art = bDAL.getArtikelInfo(int.Parse(lblID.Text));
        tbRubrik.Text = art.rubrik;
        tbText.Text = art.beskrivning;
    }
}