using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הרשמה : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string firstName1 = Request.Form["firstName1"];
            string secondName = Request.Form["secondName"];
            string number = Request.Form["number"];
            string prefix = Request.Form["prefix"];
            string email = Request.Form["email"];

            string checkSql =// אם האימייל שמשתמש הכניס קיים כבר בטבלת משתמשים
                "SELECT * FROM tUsers " +
                "WHERE email = '" + email + "' ";

            bool userExists = MyAdoHelper.IsExist(checkSql);

            if (userExists)
            {
                st = "אימייל תפוס"; // לא ייתן לו לו להרשם עם האימייל הזה
            }
            else // אם אין אימייל כזה עדיין
            {




                string sql =// מכניס את כל הפרטים שהמתמש מילא לטבלה
                    "INSERT INTO tUsers " +
                    "VALUES(" +
                    "N'" + firstName1 +
                    "', N'" + secondName +
                    "', N'" + email +
                    "', N'" + username +
                    "', N'" + password +
                    "', N'" + prefix +
                    "', N'" + number +
                    "')";

                MyAdoHelper.DoQuery("App_Data\\myDB.mdf", sql);

                st = "ההרשמה בוצעה בהצלחה 🎉";
                Response.Redirect("כניסה.aspx");

            }


        }
    }
}