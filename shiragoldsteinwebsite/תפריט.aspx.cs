using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class גלריה : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMenu();
        }
    }

    private void BindMenu()
    {
        // שם בסיס הנתונים שלך (לפי מה שהגדרת בפרויקט)
        string fileName = "myDB.mdf";
        string tableName = "tItems";

        // שליפת הנתונים מהטבלה
        string sql = "SELECT * FROM " + tableName;

        // שימוש ב-MyAdoHelper כדי לקבל DataTable
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        // קישור הנתונים ל-Repeater
        rptMenu.DataSource = dt;
        rptMenu.DataBind();
    }
}
