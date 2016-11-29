using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillNyheter();
            FillAnnonser();
        }
    }

    private void FillNyheter()
    {
        repNyheter.DataSource = nyheterList();
        repNyheter.DataBind();
    }

    private void FillAnnonser()
    {
        repAnnonser.DataSource = annonserList();
        repAnnonser.DataBind();
    }

    private DataTable nyheterList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getNyheterInfo();

        return dt;
    }

    private DataTable annonserList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getAnnonsorInfo();

        return dt;
    }
}