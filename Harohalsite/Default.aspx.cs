using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class hem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userid"] == null)
            {
                hllogin.NavigateUrl = "login.aspx";
                hllogin.Text = "Logga in";
            }
            else
            {
                hllogin.NavigateUrl = "min_profil.aspx";
                hllogin.Text = "Min Profil";
            }

            FillNyheter();
            FillAnnonser();
            //updateMenu();
        }
    }

    //Fyller repeatern med nyheterna
    private void FillNyheter()
    {
        repNyheter.DataSource = nyheterList();
        repNyheter.DataBind();
    }

    //Fyller repeatern med annonser
    private void FillAnnonser()
    {
        repAnnonser.DataSource = annonserList();
        repAnnonser.DataBind();
    }

    //Hämtar nyheterna
    private DataTable nyheterList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getNyheterInfo();

        return dt;
    }

    //Hämtar annonserna
    private DataTable annonserList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getAnnonsorInfo();

        return dt;
    }
}