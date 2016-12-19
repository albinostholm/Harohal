using System;
using System.Data;
using System.Web.UI;

public partial class boka : Page
{  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Sätter så att schemat visar dagens vecka
            hfWeek.Value = DayPilot.Utils.Week.WeekNrISO8601(DateTime.Now).ToString();
            FillMassor();
            FillTjanster();        
            FillCalender();
            weekButtons();
        }
    }

    //Hanterar texten på knapparna för att byta vecka
    private void weekButtons()
    {
        btnDeWeek.Text = "Vecka: " + (int.Parse(hfWeek.Value) - 1).ToString();
        btnInWeek.Text = "Vecka: " + (int.Parse(hfWeek.Value) + 1).ToString();
        lblWeek.Text = "Vecka: " + hfWeek.Value;

        if (int.Parse(hfWeek.Value) == 1)
            btnDeWeek.Text = "Vecka: " + 52.ToString();

        if (int.Parse(hfWeek.Value) == 52)
            btnInWeek.Text = "Vecka: " + 1.ToString();
    }

    //Sänker veckonummret
    protected void btnDeWeek_Click(object sender, EventArgs e)
    {
        hfWeek.Value = (int.Parse(hfWeek.Value) - 1).ToString();
        if (int.Parse(hfWeek.Value) < 1)
            hfWeek.Value = 52.ToString();
        weekButtons();
        FillCalender();
    }

    //Ökar veckonummret
    protected void btnInWeek_Click(object sender, EventArgs e)
    {
        hfWeek.Value = (int.Parse(hfWeek.Value) + 1).ToString();
        if (int.Parse(hfWeek.Value) > 52)
            hfWeek.Value = 1.ToString();
        weekButtons();
        FillCalender();
    }

    //Fyller repeatern och dropdownlisten med massörinfo
    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
        ddlMassor.DataSource = massorList();
        ddlMassor.DataTextField = "namn";
        ddlMassor.DataValueField = "anstalldID";
        ddlMassor.DataBind();
    }

    //Fyller repeatern och dropdownlisten med tjänstinfo
    private void FillTjanster()
    {
        repTjanster.DataSource = tjanstList();
        repTjanster.DataBind();
        ddlTjanst.DataSource = tjanstList();
        ddlTjanst.DataValueField = "tjanstID";
        ddlTjanst.DataTextField = "namn";   
        ddlTjanst.DataBind();
    }

    //Hämtar tjänstinfo
    private DataTable tjanstList()
    {
        BusinessDAL bDal = new BusinessDAL();
        return bDal.getTjanstInfo();
    }

    //Hämtar massörinfo
    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        return bDal.getMassorInfo();
    }

    //Hämtar alla schemaevent, bokningar och tillgängliga tider
    private DataTable calenderEvents(DateTime start, int week)
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();
        
        dt = bDal.getSchedule(week, anstalldID());

        return dt;
    }

    //Fyller kalendern med bokningarna för den aktiva veckan
    private void FillCalender()
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(hfWeek.Value));
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, int.Parse(hfWeek.Value) + 1);
        DayPilotCalendar1.DataBind();
    }

    //Returnerar id't för den valda tjänsten
    private int tjanstID() {
        int id = int.Parse(ddlTjanst.SelectedValue);
        return id;
    }

    //Returnerar tiden för den valda tjänsten
    private int tjanstTid() {
        BusinessDAL bDal = new BusinessDAL();
        int tid = bDal.getTjanstTid(tjanstID());

        return tid;
    }

    //Returnerar id't för den valda massören
    private string anstalldID() { return ddlMassor.SelectedValue; }

    //Lägger in din order och skickar dig till bekrafta_bokning.aspx
    protected void btnBekrafta(object sender, EventArgs e)
    {
        BusinessDAL bDal = new BusinessDAL();
        order newOrder = new order();

        string day = ddlDay.SelectedValue;

        string input = tbTime.Text.ToString();

        string[] splitTime = input.Split(':');

        DateTime starttime = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(hfWeek.Value));

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
        newOrder.personID = Session["userid"].ToString();
        newOrder.tjanstID = tjanstID();

        newOrder.startTid = starttime;
        newOrder.slutTid = starttime.AddMinutes(tjanstTid() - 1);


        if (bDal.newOrder(newOrder) == 1)
            Response.Redirect("bekrafta_bokning.aspx");
        

    }

    //Laddar om schemat ifall man byter massör
    protected void ddlMassor_SelectedIndexChanged(object sender, EventArgs e)
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, int.Parse(hfWeek.Value));
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, int.Parse(hfWeek.Value) + 1);
        DayPilotCalendar1.DataBind();
    }
}