using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string itemName = Request.Form["itemName"];
            string itemDescription = Request.Form["itemDescription"];
            string itemPrice = Request.Form["itemPrice"];




            string sql =
                "INSERT INTO tItems (itemName, itemDescription, itemPrice ) " +
                "VALUES(" +
                "N'" + itemName +
                "', N'" + itemDescription +
                "', N'" + itemPrice +
                "')";

            MyAdoHelper.DoQuery("App_Data\\myDB.mdf", sql);

            st = "DONE";
        }
    }
} 