using System;
using System.Data;
using System.Web.UI;

public partial class boka : Page
{  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            week.Value = DayPilot.Utils.Week.WeekNrISO8601(DateTime.Now).ToString();
            FillMassor();
            FillTjanster();        
            FillCalender();
            weekButtons();
        }
    }

    private void weekButtons()
    {
        deWeek.Text = "Vecka: " + (int.Parse(week.Value) - 1).ToString();
        inWeek.Text = "Vecka: " + (int.Parse(week.Value) + 1).ToString();
        lblWeek.Text = "Vecka: " + week.Value;

        if (int.Parse(week.Value) == 1)
            deWeek.Text = "Vecka: " + 52.ToString();

        if (int.Parse(week.Value) == 52)
            inWeek.Text = "Vecka: " + 1.ToString();
    }
    protected void deWeek_Click(object sender, EventArgs e)
    {
        week.Value = (int.Parse(week.Value) - 1).ToString();
        if (int.Parse(week.Value) < 1)
            week.Value = 52.ToString();
        weekButtons();
        FillCalender();
    }

    protected void inWeek_Click(object sender, EventArgs e)
    {
        week.Value = (int.Parse(week.Value) + 1).ToString();
        if (int.Parse(week.Value) > 52)
            week.Value = 1.ToString();
        weekButtons();
        FillCalender();
    }

    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
        ddlMassor.DataSource = massorList();
        ddlMassor.DataTextField = "namn";
        ddlMassor.DataValueField = "anstalldID";
        ddlMassor.DataBind();
    }

    private void FillTjanster()
    {
        repTjanster.DataSource = tjanstList();
        repTjanster.DataBind();
        ddlTjanst.DataSource = tjanstList();
        ddlTjanst.DataValueField = "tjanstID";
        ddlTjanst.DataTextField = "namn";   
        ddlTjanst.DataBind();
    }

    private DataTable tjanstList()
    {
        BusinessDAL bDal = new BusinessDAL();
        return bDal.getTjanstInfo();
    }

    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        return bDal.getMassorInfo();
    }

    private DataTable calenderEvents(DateTime start, int week)
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();
        
        dt = bDal.getSchedule(week, anstalldID());

        return dt;
    }

    private void FillCalender()
    {
        
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(week.Value));
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, int.Parse(week.Value) + 1);
        DayPilotCalendar1.DataBind();
    }

    private int tjanstID() {
        int id = int.Parse(ddlTjanst.SelectedValue);
        return id;
    }

    private int tjanstTid() {
        BusinessDAL bDal = new BusinessDAL();
        int tid = bDal.getTjanstTid(tjanstID());

        return tid;
    }

    private string anstalldID() { return ddlMassor.SelectedValue; }

    protected void btnBekrafta(object sender, EventArgs e)
    {
        BusinessDAL bDal = new BusinessDAL();
        order newOrder = new order();

        string day = ddlDay.SelectedValue;

        string input = TextBox1.Text.ToString();

        string[] splitTime = input.Split(':');

        DateTime starttime = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(week.Value));

        if (day.ToLower() == "tuesday")
        {
            starttime = starttime.AddDays(1);
        }

        else if (day.ToLower() == "wednesday")
        {
            starttime = starttime.AddDays(2);
        }

        else if (day.ToLower() == "thursday")
        {
            starttime = starttime.AddDays(3);
        }

        else if (day.ToLower() == "friday")
        {
            starttime = starttime.AddDays(4);
        }

        else if (day.ToLower() == "saturday")
        {
            starttime = starttime.AddDays(5);
        }

        starttime = starttime.AddHours(int.Parse(splitTime[0]));
        starttime = starttime.AddMinutes(int.Parse(splitTime[1]));

        newOrder.orderStatusID = 10;
        newOrder.anstalldID = anstalldID();
        newOrder.personID = "095C51B3-C019-49F4-B80F-E4CEEADA3504";
        newOrder.tjanstID = tjanstID();

        newOrder.startTid = starttime;
        newOrder.slutTid = starttime.AddMinutes(tjanstTid() - 1);


        if (bDal.newOrder(newOrder) == 1)
            Response.Redirect("bekrafta_bokning.aspx");
        

    }

    protected void ddlMassor_SelectedIndexChanged(object sender, EventArgs e)
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(week.Value));
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, int.Parse(week.Value) + 1);
        DayPilotCalendar1.DataBind();
    }

    
}