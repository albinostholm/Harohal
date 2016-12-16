using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bekrafta_bokning : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillOrder();
        }
    }

    protected DataTable order()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getOneUserOrder(Session["userid"].ToString());

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

    protected void FillOrder()
    {
        rptOrder.DataSource = order();
        rptOrder.DataBind();
    }

    protected void btnAvbryt_Click(object sender, EventArgs e)
    {
        Response.Redirect("boka.aspx");
    }

    protected void btnBekrafta_Click(object sender, EventArgs e)
    {
        BusinessDAL bDAL = new BusinessDAL();
        foreach (RepeaterItem rptI in rptOrder.Items)
        {
            HiddenField hf = (HiddenField)rptI.FindControl("hfOrderID");
            bDAL.updateOrderStatusID(20, hf.Value);
        }
        Response.Redirect("min_profil.aspx");

    }
}