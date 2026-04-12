using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_search_product : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string query = Request.Form["query"];
            

            string sql = "SELECT * FROM titems WHERE" +
                " itemName LIKE N'%" + query + "%' or " +
                "itemDescription LIKE N'%" + query + "%'";


            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border= '1'>";
                st += "<tr>";
                st += "<td>id </td>";
                st += "<td>itemName </td>";
                st += "<td> itemDescription</td>";
                st += "<td> itemPrice</td>";
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