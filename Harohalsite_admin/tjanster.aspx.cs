//beckman

using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillTjanster();
            updateMenu();
            panEditTjanst.Visible = false;
            
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

    protected void repTjanster_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblID.Text = e.CommandArgument.ToString();
        panEditTjanst.Visible = true;
        // populera  nyheten
        BusinessDAL bDAL = new BusinessDAL();
        cArtikel art = bDAL.getOneTjanst(int.Parse(lblID.Text));
        tbNamn.Text = art.rubrik;
        tbBeskrivning.Text = art.beskrivning;
        tbPris.Text = art.pris.ToString();
        tbTid.Text = art.tid.ToString();

        tbPris.Text = tbPris.Text.ToString().Split(',')[0];
    }


    //Hämtar artikeln om tjänster
    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();

        a.namn = tbNamn.Text.ToString();
        a.beskrivning = tbBeskrivning.Text.ToString();
        a.id = (lblID.Text.ToString());

        a.pris = Convert.ToDecimal(tbPris.Text);
        a.tid = Convert.ToInt16(tbTid.Text);


        bd.updateTjanstInfo(a);

        FillTjanster();
        panEditTjanst.Visible = false;
    }

    protected void btnNewTjanst_Click(object sender, EventArgs e)
    {
        cArtikel newTjanst = new cArtikel();
        AdminDAL aDAL = new AdminDAL();
        if (tbNewNamn.Text.Length > 0 && tbNewBeskrivning.Text.Length > 0 && tbNewPris.Text.Length > 0 && tbNewTid.Text.Length > 0)
        {
            newTjanst.namn = tbNewNamn.Text;
            newTjanst.beskrivning = tbNewBeskrivning.Text;
            newTjanst.pris = int.Parse(tbNewPris.Text);
            newTjanst.tid = int.Parse(tbNewTid.Text);

            aDAL.newTjanst(newTjanst, Session["userId"].ToString());
        }
    }
}