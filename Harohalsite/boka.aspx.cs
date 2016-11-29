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

    protected void btnBekrafta(object sender, EventArgs e)
    {
        Response.Redirect("bekrafta_bokning.aspx");
    }
}