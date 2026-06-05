using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail; 
using System.Web;
using System.Web.Routing;
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
        // 1. שליפת הנתונים שוב כדי לבנות את המייל (או שתשמרי את ה-DataTable ב-Session)
        List<string> cart = (List<string>)Session["Cart"];
        string ids = string.Join(",", cart);
        DataTable dt = MyAdoHelper.ExecuteDataTable("SELECT * FROM tItems WHERE id IN (" + ids + ")");

        // 2. בניית רשימת הפריטים למייל
        string itemsList = "";
        double total = 0;

        foreach (DataRow row in dt.Rows)
        {
            string name = row["itemName"].ToString();
            string price = row["itemPrice"].ToString();
            itemsList += "- " + name + ": " + price + " ₪\n";
            total += Convert.ToDouble(price);
        }


        // 3. יצירת תוכן המייל הסופי
        string emailBody = "שלום מנהל האתר,\n\n";
        emailBody += "יש הזמנה חדשה מאת: " + Session["name"] + "\n\n";
        emailBody += "פירוט המנות:\n" + itemsList + "\n";
        emailBody += "סה\"כ לתשלום: " + total.ToString("0.00") + " ₪";

        // 4. שליחת המייל (דרך ה-Papercut)
        MailMessage mail = new MailMessage("site@food.com", "manager@food.com");
      
        mail.Subject = "הזמנה חדשה באתר!";
        mail.Body = emailBody;

        try
        {
            SmtpClient smtp = new SmtpClient("127.0.0.1", 2525);
            smtp.Send(mail);
        }
        catch (Exception ex) { 
            System.Console.WriteLine("כשל בשלחית הדואר");
        }
        // ניקוי והפניה
        Session["Cart"] = null;
        Response.Redirect("תפריט.aspx");
    }
}
