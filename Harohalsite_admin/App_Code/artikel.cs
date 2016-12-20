﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Artiklar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillNyheter();
            panEditArtikel.Visible = false;
        }
    }

    private void FillNyheter()
    {
        repArtiklar.DataSource = nyheterList();
        repArtiklar.DataBind();
    }


    private DataTable nyheterList()
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
        artikel a = new artikel();


    }

    protected void repNyheter_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblRCtest.Text = e.CommandArgument.ToString();
        panEditArtikel.Visible = true;
        // populera  nyheten

    }

    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        artikel a = new artikel();

        a.rubrik = tbRubrik.Text.ToString();
        a.beskrivning = tbBeskrivning.Text.ToString();
        a.id = Convert.ToInt16(lblRCtest.Text.ToString());

        bd.updateArtikelInfo(a);
    }
}