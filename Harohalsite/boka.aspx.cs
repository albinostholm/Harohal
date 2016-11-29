using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class boka : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassor();
            FillTjanster();
        }
    }

    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
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

    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getMassorInfo();
        
       
        return dt;
    }

    private int tjanstID()
    {
        int i = 1;
        foreach(RepeaterItem item in repTjanster.Items)
        {
            CheckBox cbx = (CheckBox)item.FindControl("cbxTjanst");
            if (cbx.Checked == true)
            {
                i = int.Parse(cbx.Text);
            }          
        }
        return i;
    }

    private string anstalldID()
    {
        string i = "kappa";
        foreach (RepeaterItem item in repMassor.Items)
        {
            CheckBox cbx = (CheckBox)item.FindControl("cbxMassor");
            if (cbx.Checked == true)
            {
                i = cbx.Text;
                
            }
        }
        return i;
    }

    protected void btnBekrafta(object sender, EventArgs e)
    {
        BusinessDAL bDal = new BusinessDAL();
        order newOrder = new order();

        newOrder.orderStatusID = 10;
        newOrder.anstalldID = anstalldID();
        newOrder.personID = "9E0C52CD-9F2C-432C-A6C1-D2475B5315D3";
        newOrder.tjanstID = tjanstID();
        newOrder.slutTid = DateTime.Today;
        newOrder.startTid = DateTime.Now;

        bDal.newOrder(newOrder);
        Response.Redirect("bekrafta_bokning.aspx");
    }
}