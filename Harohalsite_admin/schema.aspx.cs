using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class schema : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Sätter så att schemat visar dagens vecka
            hfWeek.Value = DayPilot.Utils.Week.WeekNrISO8601(DateTime.Now).ToString();
			hfYear.Value = DateTime.Now.Year.ToString();
			FillCalender();
            weekButtons();
        }
    }

    private void FillCalender()
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(int.Parse(hfYear.Value), int.Parse(hfWeek.Value));
        DayPilotCalendar1.DataSource = calenderEvents(DayPilotCalendar1.StartDate, int.Parse(hfWeek.Value));
        DayPilotCalendar1.DataBind();
    }

    private DataTable calenderEvents(DateTime start, int week)
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getSchedule(week, Session["userId"].ToString());

        return dt;
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
		int year = int.Parse(hfYear.Value);
		hfWeek.Value = (int.Parse(hfWeek.Value) - 1).ToString();

		if (int.Parse(hfWeek.Value) < 1)
		{
			hfWeek.Value = 52.ToString();
			year -= 1;
			hfYear.Value = year.ToString();
		}
        weekButtons();
        FillCalender();
    }

    //Ökar veckonummret
    protected void btnInWeek_Click(object sender, EventArgs e)
    {
		int year = int.Parse(hfYear.Value);
		hfWeek.Value = (int.Parse(hfWeek.Value) + 1).ToString();

		if (int.Parse(hfWeek.Value) > 52)
		{
			hfWeek.Value = 1.ToString();
			year += 1;
			hfYear.Value = year.ToString();
		}
        weekButtons();
        FillCalender();
    }
}