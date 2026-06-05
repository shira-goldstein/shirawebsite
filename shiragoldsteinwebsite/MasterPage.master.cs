using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
                // שליפת הסל מהסשן
            List<string> cart = (List<string>)Session["Cart"];

                // עדכון ה-Label במספר הפריטים
            lblCartCount.Text = "(" + cart.Count + ")";
        }
        else
        {
            lblCartCount.Text = "(0)";
        }


        if (Session["nihul"] == null)
        {
            adminLink.Visible = false;
        }

        if (Session["name"] == "אורח")
        {
            regLink.Visible = true;
        }

        if (Session["user"] != null || Session["nihul"] != null)
        {
            exitLink.Visible = true;
            regLink.Visible = false;
            logInlink.Visible = false;
            updateLink.Visible = true;

        }
        else
        {
            exitLink.Visible = false;
            regLink.Visible = true;
            logInlink.Visible = true;
            updateLink.Visible = false;
        }


        // --- הקוד החדש להצגת השם ---
        if (Session["name"] != null)
        {
            lblUserName.Text = Session["name"].ToString();
        }
        else
        {
            lblUserName.Text = "אורח";
        }




    }
    public void UpdateCartCount() // עדכון כמה פריטים יש בסל הקניות
    {
        if (Session["Cart"] != null)
        {
            List<string> cart = (List<string>)Session["Cart"];//של הפריטים שבסל למשתנה ID מכניס את ה   
            lblCartCount.Text = "(" + cart.Count + ")"; //מדפיס במסך בתוך סוגריים כמה פריטים יש בסל
        }
    }
}
