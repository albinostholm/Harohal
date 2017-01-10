using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class schema : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Fyller ut repeatern med dina ordrar
    protected void FillOrdrar()
    {
        rptBokningar.DataSource = orders();
        rptBokningar.DataBind();
    }

    //Hämtar dina ordrar
    protected DataTable orders()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getUserOrders(Session["userid"].ToString());

        foreach (DataColumn dc in dt.Columns)
        {
            dc.ReadOnly = false;
        }

        foreach (DataRow dr in dt.Rows)
        {
            if (dr["startTid"].ToString().Length == 4)
            {
                dr["startTid"] += "0";
            }
            if (dr["slutTid"].ToString().Length == 4)
            {
                dr["slutTid"] += "0";
            }
        }
        return dt;
    }



    // // // // // // // // //
    protected void button1_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();
    }

    protected void repBokningar_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //lblRCtest.Text = e.CommandArgument.ToString();
        panEditBokning.Visible = true;
        // populera  nyheten
    }

    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();

        a.rubrik = tbStartTid.Text.ToString();
        a.beskrivning = tbSlutTid.Text.ToString();
        //a.id = (lblRCtest.Text.ToString());

        bd.updateNyhetInfo(a);
    }
    protected void tbText_TextChanged(object sender, EventArgs e)
    {

    }

    protected void tbRubrik_TextChanged(object sender, EventArgs e)
    {

    }
    // // // // // // // // //


    //Avbokar de markerade ordrarna
    protected void btnAvboka_Click(object sender, EventArgs e)
    {
        int x = 40;
        BusinessDAL bDAL = new BusinessDAL();
        foreach (RepeaterItem rptI in rptBokningar.Items)
        {
            CheckBox cbx = (CheckBox)rptI.FindControl("cbxAvboka");
            HiddenField hf = (HiddenField)rptI.FindControl("hfOrderID");

            if (cbx.Checked)
            {
                bDAL.updateOrderStatusID(x, hf.Value);
            }
        }
        FillOrdrar();
    }
}