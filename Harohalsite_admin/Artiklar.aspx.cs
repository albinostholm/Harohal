using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



public partial class Artiklar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillArtiklar();
            panEditArtikel.Visible = false;
        }
    }
    private void FillArtiklar()
    {
        repArtiklar.DataSource = artiklarList();
        repArtiklar.DataBind();
    }
    private DataTable artiklarList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getNyheterInfo();

        return dt;
    }

    //Updaterar nyhetens
    protected void button1_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();


    }

    protected void repArtiklar_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblRCtest.Text = e.CommandArgument.ToString();
        panEditArtikel.Visible = true;
        // populera  nyheten

    }




    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();

        a.rubrik = tbRubrik.Text.ToString();
        a.beskrivning = tbBeskrivning.Text.ToString();

        bd.updateArtikelInfo(a);
    }
}