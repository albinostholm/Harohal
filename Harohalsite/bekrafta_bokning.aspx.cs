using System;
using System.Data;
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
    //Hämtar ut bokningen du precis gjorde på boka.aspx
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

    //Fyller repeatern med din bokning
    protected void FillOrder()
    {
        rptOrder.DataSource = order();
        rptOrder.DataBind();
    }

    //Avbryter bekräftningen och tar dig tillbaka till bokningsidan
    protected void btnAvbryt_Click(object sender, EventArgs e)
    {
        Response.Redirect("boka.aspx");
    }

    //Bekräftar bokningen så att den syns på scheman och liknande
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