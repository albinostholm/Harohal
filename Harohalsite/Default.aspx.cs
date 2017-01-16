using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class hem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillNyheter();
            FillAnnonser();
            //updateMenu();
        }
    }

    //Updaterar navigeringsmenyn beroende på ifall man är inloggad
   /* private void updateMenu()
    {
        if (Session.Count > 0)
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Logga in")
                {
                    mItem.Text = "Min Profil";
                    mItem.NavigateUrl = "min_profil.aspx";
                }
            }
        } else
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Min Profil")
                {
                    mItem.Text = "Logga In";
                    mItem.NavigateUrl = "login.aspx";
                }
            }
        }
    }*/

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