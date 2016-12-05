using System;
using System.Data;
using System.Web.UI;
using System.Globalization;

public partial class boka : Page
{
    static CultureInfo ci = new CultureInfo("sv-SE");
    static Calendar cal = ci.Calendar;
    int week = cal.GetWeekOfYear(DateTime.Now, CalendarWeekRule.FirstDay, DayOfWeek.Monday) - 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassor();
            FillTjanster();        
            FillCalender();
            weekButtons();
        }
    }

    private void weekButtons()
    {
        deWeek.Text = "Vecka: " + Convert.ToString(week - 1);
        inWeek.Text = "Vecka: " + Convert.ToString(week + 1);
        lblWeek.Text = "Vecka: " + Convert.ToString(week);
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
        ddlTjanst.DataTextField = "namn";
        ddlTjanst.DataValueField = "tid";
        ddlTjanst.DataMember = "tjanstID";
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
        
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, week);
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, week + 1);
        DayPilotCalendar1.DataBind();
    }

    private DateTime tjanstTid() { return DateTime.Parse(ddlTjanst.DataMember); }

    private int tjanstID() { return int.Parse(ddlTjanst.DataValueField); }

    private string anstalldID() { return ddlMassor.SelectedValue; }

    protected void btnBekrafta(object sender, EventArgs e)
    {
        BusinessDAL bDal = new BusinessDAL();
        order newOrder = new order();

        string day = ddlDay.SelectedValue;

        string input = TextBox1.Text.ToString();

        string[] splitTime = input.Split(':');

        DateTime starttime = DateTimeExtensions.FirstDateOfWeekISO8601(2016, week);

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
        newOrder.slutTid = starttime.AddMinutes(tjanstTid().Minute);
        

        bDal.newOrder(newOrder);
        Response.Redirect("bekrafta_bokning.aspx");
    }

    protected void ddlMassor_SelectedIndexChanged(object sender, EventArgs e)
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, week);
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, week + 1);
        DayPilotCalendar1.DataBind();
    }

    protected void deWeek_Click(object sender, EventArgs e)
    {
        week = week - 1;
    }

    protected void inWeek_Click(object sender, EventArgs e)
    {
        week = week + 1;
    }
}