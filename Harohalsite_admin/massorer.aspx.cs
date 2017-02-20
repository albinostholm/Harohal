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
        lblID.Text = e.CommandArgument.ToString();
        panEditMassor.Visible = true;
        // populera  nyheten
        BusinessDAL bDAL = new BusinessDAL();
        cAnvandare art = bDAL.getOneMassor(lblID.Text);
        tbForNamn.Text = art.FirstName;
        tbEfterNamn.Text = art.LastName;
        tbBeskrivning.Text = art.ssn;
    }


    //Hämtar artikeln om massörer
    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cAnvandare a = new cAnvandare();

        a.FirstName = tbForNamn.Text.ToString();
        a.LastName = tbEfterNamn.Text.ToString();
        a.Password = tbBeskrivning.Text.ToString();
        a.UserId = (lblID.Text.ToString());

        bd.updateMassorInfo(a);

        FillMassorer();
        panEditMassor.Visible = false;
    }

    protected void btnNewMassor_Click(object sender, EventArgs e)
    {
        cArtikel newMassor = new cArtikel();
        AdminDAL aDAL = new AdminDAL();

        int x = 0;
        int y = 0;

        if (cbxMen.Checked)
        {
            x = 1;
        }

        if (cbxWomen.Checked)
        {
            y = 1;
        }

        if (tbSSN.Text.Length > 0 && tbNewBeskrivning.Text.Length > 0)
        {
            newMassor.namn = tbSSN.Text;
            newMassor.beskrivning = tbNewBeskrivning.Text;
            newMassor.pris = y;
            newMassor.tid = x;

            aDAL.newAnstalld(newMassor, Session["userId"].ToString());
        }
    }
}