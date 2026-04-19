using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];


            if (username == "shira" && password == "4145929")
            {
                Session["nihul"] = "ok";
                Session["name"] = "מנהל";
                Response.Redirect("מנהל.aspx");
            }
            else
            {


                // בדיקת משתמש רגיל
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE username = '" + username + "' " +
                    "AND password = '" + password + "'";

                //bool userExists = MyAdoHelper.IsExist(sql);
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count==0)
                //if (!userExists)
                {
                    Session["name"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["first_name"];
                    Response.Redirect("דף בית.aspx");
                }


            }

        }

    }
}