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
            FillCalender();
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

    private DataTable calenderEvents(DateTime start)
    {
        HiddenField hf = new HiddenField();
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        foreach (RepeaterItem item in repMassor.Items)
        {        
            HiddenField hf2 = (HiddenField)item.FindControl("hfMassor");
            hf.Value = hf2.Value;     
        }

        dt = bDal.getSchedule(start, hf.Value);

        return dt;
    }

    private void FillCalender()
    {
        DayPilotCalendar1.StartDate = DateTime.Now;
        DayPilotCalendar1.DataSource = calenderEvents(DateTime.Now);
        DayPilotCalendar1.DataBind();
    }

    private int tjanstID()
    {
        int i = 1;
        foreach(RepeaterItem item in repTjanster.Items)
        {
            CheckBox cbx = (CheckBox)item.FindControl("cbxTjanst");
            HiddenField hf = (HiddenField)item.FindControl("hfTjanst");
            if (cbx.Checked == true)
            {
                i = int.Parse(hf.Value);               
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
            HiddenField hf = (HiddenField)item.FindControl("hfMassor");
            if (cbx.Checked == true)
            {
                i = hf.Value;
                
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