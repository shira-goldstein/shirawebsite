using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class הסל_שלי : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCart();
        }
    }

    private void BindCart()
    {
        if (Session["Cart"] != null)
        {
            List<string> cart = (List<string>)Session["Cart"];

            // יצירת מחרוזת של כל ה-IDs בסל (למשל: "1,3,5")
            string ids = string.Join(",", cart);

            // שליפת הנתונים מהטבלה
            string sql = "SELECT * FROM tItems WHERE id IN (" + ids + ")";
            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            // חישוב סכום כולל
            double total = 0;
            foreach (DataRow row in dt.Rows)
            {
                total += Convert.ToDouble(row["itemPrice"]);
            }
            lblTotal.Text = "סה\"כ לתשלום: " + total.ToString("0.00") + " ₪";
        }
        else
        {
            lblTotal.Text = "הסל שלך ריק.";
        }
    }

    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        // כאן בעתיד נבצע שמירה של ההזמנה ב-tOrders
        Response.Write("<script>alert('תודה על הזמנתך!');</script>");
        Session["Cart"] = null; // מנקים את הסל
        Response.Redirect("תפריט.aspx");
    }
}