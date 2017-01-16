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
            FillOldOrdrar();
        }  
    }

    //Fyller ut repeatern med dina ordrar
    protected void FillOrdrar()
    {
        rptBokningar.DataSource = orders();
        rptBokningar.DataBind();
    }

    //Hämtar dina ordrar
    protected DataTable orders()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getUserOrders(Session["userid"].ToString());

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

    protected DataTable oldorders()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getOldUserOrders(Session["userid"].ToString());

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

    protected void FillOldOrdrar()
    {
        rptOldBokningar.DataSource = oldorders();
        rptOldBokningar.DataBind();
    }

    //Hämtar användarens info och skriver ut den
    private void GetUserData()
    {
        BusinessDAL bDAL = new BusinessDAL();
        anvandare user = new anvandare();
        user = bDAL.getUserData(Session["userid"].ToString());
        tbxFornamn.Text = user.FirstName;
        tbxEfternamn.Text = user.LastName;
        tbxMail.Text = user.Epost;
        tbxSSN.Text = user.ssn;
        if (user.faktura == "False")
        {
            cbxFaktura.Checked = false;
        } else
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
        Response.Redirect("byt_losen.aspx");
    }

    //Avbokar de markerade ordrarna
    protected void btnAvboka_Click(object sender, EventArgs e)
    {
        int x = 40;
        BusinessDAL bDAL = new BusinessDAL();
        foreach(RepeaterItem rptI in rptBokningar.Items)
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
        Response.Redirect("Default.aspx");
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
        anvandare updatedUser = new anvandare();
        updatedUser.Epost = tbxMail.Text;
        updatedUser.FirstName = tbxFornamn.Text;
        updatedUser.LastName = tbxEfternamn.Text;
        updatedUser.ssn = tbxSSN.Text;

        if (cbxNewsLetter.Checked)
        {
            updatedUser.newsletter = "1";
        } else
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
}