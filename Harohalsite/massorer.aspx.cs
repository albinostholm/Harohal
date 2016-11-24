using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class massorer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassor();
        }
    }

    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
    }

    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getMassorInfo();

        return dt;
    }
}