using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הסל_שלי : System.Web.UI.Page
{
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        // מתחילים עם מחיר המנה שנבחרה
        double total = double.Parse(ddlMeals.SelectedValue);

        // עוברים על כל מה שסומן בתוספות ומוסיפים למחיר
        foreach (ListItem item in cblExtras.Items)
        {
            if (item.Selected)
            {
                total += double.Parse(item.Value);
            }
        }

        // מציגים את התוצאה
        lblTotal.Text = total.ToString();
    }
}