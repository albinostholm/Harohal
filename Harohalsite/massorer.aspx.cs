using System;
using System.Data;
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

        foreach (RepeaterItem rptI in repMassor.Items)
        {
            HiddenField hfTreatsM = (HiddenField)rptI.FindControl("hfTreatsM");
            HiddenField hfTreatsW = (HiddenField)rptI.FindControl("hfTreatsW");
            Literal litTreatsM = (Literal)rptI.FindControl("litTreatsM");
            Literal litTreatsW = (Literal)rptI.FindControl("litTreatsW");

            if (hfTreatsM.Value == "True")
            {
                litTreatsM.Visible = true;
            }
            else
            {
                litTreatsM.Visible = false;
            }

            if (hfTreatsW.Value == "True")
            {
                litTreatsW.Visible = true;
            }
            else
            {
                litTreatsW.Visible = false;
            }

            Literal litAge = (Literal)rptI.FindControl("litAge");
            HiddenField hfAge = (HiddenField)rptI.FindControl("hfAge");

            litAge.Text += hfAge.Value.Substring(0, 4);           
        }
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