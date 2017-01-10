using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class min_profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUserData();
            FillOrdrar();
            FillMassor();
            FillTjanster();
            updateMenu();
            panEditOrder.Visible = false;
        }
    }

    //Updaterar navigeringsmenyn beroende på ifall man är inloggad
    private void updateMenu()
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
        }
        else
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
    }

    //Fyller ut repeatern med dina ordrar
    protected void FillOrdrar()
    {
        rptOrders.DataSource = orders();
        rptOrders.DataBind();
    }

    //Fyller dropdownlisten med massörinfo
    private void FillMassor()
    {
        ddlMassor.DataSource = massorList();
        ddlMassor.DataTextField = "namn";
        ddlMassor.DataValueField = "anstalldID";
        ddlMassor.DataBind();
    }

    //Returnerar id't för den valda tjänsten
    private int tjanstID()
    {
        int id = int.Parse(ddlTjanster.SelectedValue);
        return id;
    }

    //Returnerar id't för den valda massören
    private string anstalldID() { return ddlMassor.SelectedValue; }

    //Fyller dropdownlisten med tjänstinfo
    private void FillTjanster()
    {
        ddlTjanster.DataSource = tjanstList();
        ddlTjanster.DataValueField = "tjanstID";
        ddlTjanster.DataTextField = "namn";
        ddlTjanster.DataBind();
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

    protected void btnUppdatera_Click(object sender, EventArgs e)
    {
        BusinessDAL bDAL = new BusinessDAL();
        cOrder o = new cOrder();

        //bDAL.updateOrderInfo(o);
    }

    //Hämtar dina ordrar
    protected DataTable orders()
    {
        AdminDAL aDal = new AdminDAL();
        DataTable dt = new DataTable();

        dt = aDal.getMassorOrders(Session["userid"].ToString());

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

    //Hämtar användarens info och skriver ut den
    private void GetUserData()
    {
        BusinessDAL bDAL = new BusinessDAL();
        cAnvandare user = new cAnvandare();
        user = bDAL.getUserData(Session["userid"].ToString());
        tbxFornamn.Text = user.FirstName;
        tbxEfternamn.Text = user.LastName;
        tbxMail.Text = user.Epost;
        tbxSSN.Text = user.ssn;
        if (user.faktura == "False")
        {
            cbxFaktura.Checked = false;
        }
        else
        {
            cbxFaktura.Checked = true;
        }
        if (user.newsletter == "False")
        {
            cbxNewsLetter.Checked = false;
        }
        else
        {
            cbxNewsLetter.Checked = true;
        }
    }

    //Redirectar dig till glomt_losen.aspx
    protected void btnBytLosen_Click(object sender, EventArgs e)
    {
        Response.Redirect("glomt_losen.aspx");
    }

    //Avbokar de markerade ordrarna
    protected void btnAvboka_Click(object sender, EventArgs e)
    {
        int x = 40;
        BusinessDAL bDAL = new BusinessDAL();
        foreach (RepeaterItem rptI in rptOrders.Items)
        {
            CheckBox cbx = (CheckBox)rptI.FindControl("cbxAvboka");
            HiddenField hf = (HiddenField)rptI.FindControl("hfOrderID");

            if (cbx.Checked)
            {
                bDAL.updateOrderStatusID(x, hf.Value);
            }
        }
        FillOrdrar();
    }

    //Loggar ut den aktiva personen
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }

    protected void btnEditinfo_Click(object sender, EventArgs e)
    {
        btnEditinfo.Visible = false;
        btnCancelEdit.Visible = true;
        btnSaveinfo.Visible = true;

        tbxFornamn.Enabled = true;
        tbxEfternamn.Enabled = true;
        tbxMail.Enabled = true;
        tbxSSN.Enabled = true;
        cbxFaktura.Enabled = true;
        cbxNewsLetter.Enabled = true;

    }

    protected void btnSaveInfo_Click(object sender, EventArgs e)
    {
        btnEditinfo.Visible = true;
        btnCancelEdit.Visible = false;
        btnSaveinfo.Visible = false;

        tbxFornamn.Enabled = false;
        tbxEfternamn.Enabled = false;
        tbxMail.Enabled = false;
        tbxSSN.Enabled = false;
        cbxFaktura.Enabled = false;
        cbxNewsLetter.Enabled = false;

        BusinessDAL bDAL = new BusinessDAL();
        cAnvandare updatedUser = new cAnvandare();
        updatedUser.Epost = tbxMail.Text;
        updatedUser.FirstName = tbxFornamn.Text;
        updatedUser.LastName = tbxEfternamn.Text;
        updatedUser.ssn = tbxSSN.Text;

        if (cbxNewsLetter.Checked)
        {
            updatedUser.newsletter = "1";
        }
        else
        {
            updatedUser.newsletter = "0";
        }
        if (cbxFaktura.Checked)
        {
            updatedUser.faktura = "1";
        }
        else
        {
            updatedUser.faktura = "0";
        }

        bDAL.updateUserInfo(updatedUser, Session["userid"].ToString());

        GetUserData();
    }

    protected void btnCancelEdit_Click(object sender, EventArgs e)
    {
        btnEditinfo.Visible = true;
        btnCancelEdit.Visible = false;
        btnSaveinfo.Visible = false;

        tbxFornamn.Enabled = false;
        tbxEfternamn.Enabled = false;
        tbxMail.Enabled = false;
        tbxSSN.Enabled = false;
        cbxFaktura.Enabled = false;
        cbxNewsLetter.Enabled = false;
        GetUserData();
    }

    protected void rptOrders_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        lblRCtest.Text = e.CommandArgument.ToString();
        panEditOrder.Visible = true;
        // populera  nyheten
    }
}