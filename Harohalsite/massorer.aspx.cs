using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class massorer : System.Web.UI.Page
{
    protected massor ma;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = "massor1";
        BusinessDAL bDAL = new BusinessDAL();

        ma = bDAL.GetMassorInfo(id);
    }
}