using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class מנהל : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string firstName1 = Request.Form["firstName1"];
            string secondName = Request.Form["secondName"];

            string sql = "SELECT * FROM tusers WHERE" +
                "first_name LIKE N'%" + firstName1 + "%' AND " +
                "last_name= N'%" + secondName + "%'";


            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border= '1'>";
                st += "<tr>";
                st += "<td>שם פרטי </td>";
                st += "<td> שם משפחה</td>";
                st += "<td> מייל</td>";
                st += "<td>שם משתמש </td>";
                st += "<td> סיסמה</td>";
                st += "<td> טלפון קידומת </td>";
                st += "<td>מספר טלפון </td>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";

                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        st += "<td>" + dt.Rows[i][k] + "</td>";
                    }

                    st += "</tr>";
                }

                st += "</table>";

            }

        }
    }
}