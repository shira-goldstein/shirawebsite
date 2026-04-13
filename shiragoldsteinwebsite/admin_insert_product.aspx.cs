using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_insert_product : System.Web.UI.Page    
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string itemName = Request.Form["itemName"];
            string itemDescription = Request.Form["itemDescription"];
            string itemPrice = Request.Form["itemPrice"];



            double number;
            bool isNameValid = !string.IsNullOrWhiteSpace(itemName);
            bool isDescriptionValid = !string.IsNullOrWhiteSpace(itemDescription);
            bool isPriceValid = double.TryParse(itemPrice, out number) && number > 0;

            if (isNameValid && isDescriptionValid && isPriceValid)
            {
                string sql =
                    "INSERT INTO tItems " +
                    "VALUES(" +
                    "N'" + itemName +
                    "', N'" + itemDescription +
                    "', N'" + number +
                    "')";

                MyAdoHelper.DoQuery("App_Data\\myDB.mdf", sql);

                st = "צירוף מוצר לתפריט בוצע בהצלחה 🎉";


            }
            else st = "הפריט לא ניתן להוספה";
        }


    }
}
