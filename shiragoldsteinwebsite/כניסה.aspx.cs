using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string username = Request.Form["username"];
        string password = Request.Form["password"];

        if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
        {
            Response.Write("שם משתמש: " + username + "<br>");
            Response.Write("סיסמה: " + password);
        }
    }

}
