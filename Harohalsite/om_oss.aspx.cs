using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class om_oss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOneArtikel();
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