using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class massorer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassor();
            GetOneArtikel();
        }
    }

    //Fyller repeatern med massörinfo
    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
    }

    //Hämtar artikeln för massörer och skriver ut den
    private void GetOneArtikel()
    {
        BusinessDAL bDAL = new BusinessDAL();
        artikel art = new artikel();
        art = bDAL.getArtikelInfo(2);
        lblRubrik.Text = art.rubrik;
        litBeskrivning.Text = art.beskrivning;
    }

    //Hämtar massörinfo
    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getMassorInfo();

        return dt;
    }
}