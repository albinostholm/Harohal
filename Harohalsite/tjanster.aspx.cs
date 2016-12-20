using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

    private void FillTjanster()
    {
        repTjanster.DataSource = tjanstList();
        repTjanster.DataBind();
    }

    private DataTable tjanstList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getTjanstInfo();

        return dt;
    }

    private void GetOneArtikel()
    {
        BusinessDAL bDAL = new BusinessDAL();
        artikel art = new artikel();
        art = bDAL.getArtikelInfo(1);
        lblRubrik.Text = art.rubrik;
        litBeskrivning.Text = art.beskrivning;
    }
}