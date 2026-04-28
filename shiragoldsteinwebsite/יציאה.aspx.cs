using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class יציאה : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();     // מוחק את כל הערכים
        Session.Abandon();   // מסיים את ה-Session

        Response.Redirect("כניסה.aspx");
    }
}