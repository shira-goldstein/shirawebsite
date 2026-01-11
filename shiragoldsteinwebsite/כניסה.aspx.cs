using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class כניסה : System.Web.UI.Page
{
    public string username;
    public string password;
    protected void Page_Load(object sender, EventArgs e)
    {

        username = Request.Form["username"];
        password = Request.Form["password"];

   
    }

}
