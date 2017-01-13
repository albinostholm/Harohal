using System;
using System.Data;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOneArtikel();
            FillTjanster();
        }
    }

    //Fyller ut repeatern med tjänstinfo
    private void FillTjanster()
    {
        repTjanster.DataSource = tjanstList();
        repTjanster.DataBind();
    }

    //Hämtar tjänstinfo
    private DataTable tjanstList()
    {
        BusinessDAL bDal = new BusinessDAL();

        DataTable dt = bDal.getTjanstInfo();

        foreach (DataColumn dc in dt.Columns)
        {
            dc.ReadOnly = false;
        }

        foreach (DataRow dr in dt.Rows)
        {
            string[] prisparts = dr["pris"].ToString().Split(',');
            dr["pris"] = prisparts[0];
        }
        return dt;
    }

    //Hämtar artikeln om tjänster
    private void GetOneArtikel()
    {
        BusinessDAL bDAL = new BusinessDAL();
        artikel art = new artikel();
        art = bDAL.getArtikelInfo(1);
        lblRubrik.Text = art.rubrik;
        litBeskrivning.Text = art.beskrivning;
    }
}