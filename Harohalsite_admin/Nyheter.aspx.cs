using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nyheter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillNyheter();
            panEditNyhet.Visible = false;           
        }
    }

    private void FillNyheter()
    {
        repNyheter.DataSource = nyheterList();
        repNyheter.DataBind();
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
        cArtikel a = new cArtikel();

        
    }

    protected void repNyheter_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblRCtest.Text = e.CommandArgument.ToString();
        panEditNyhet.Visible = true;
        // populera  nyheten

    }

    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bd = new BusinessDAL();
        cArtikel a = new cArtikel();

        a.rubrik = tbRubrik.Text.ToString();
        a.beskrivning = tbText.Text.ToString();
        a.id = (lblRCtest.Text.ToString());

        bd.updateNyhetInfo(a);
    }

    protected void tbText_TextChanged(object sender, EventArgs e)
    {

    }

    protected void tbRubrik_TextChanged(object sender, EventArgs e)
    {

    }
}