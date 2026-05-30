using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class חיפוש : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string name = Request.Form["searchName"];


            string sql = "SELECT * FROM tItems WHERE itemName LIKE N'%" + name + "%'";


            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            rptResults.DataSource = dt;
            rptResults.DataBind();

        }

    }
}