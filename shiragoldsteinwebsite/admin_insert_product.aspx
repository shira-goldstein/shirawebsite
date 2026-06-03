<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_insert_product.aspx.cs" Inherits="admin_insert_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script lanuage="javascript">

        function checkAll() {
            nameErr.innerHTML = "";
            desErr.innerHTML = "";
            priceErr.innerHTML = "";

            f = true;

            f = checkItemName() && f;
            f = checkDesName() && f;
            f = checkPriceName() && f;

            return f;
        }//סוף פעולה ראשית

        function checkItemName() {
            name = document.getElementById("itemName1").value;
            if (name.length < 2 || name.length > 30) {
                nameErr.innerHTML = "אורך שם המוצר לא תקין";
                return false;
            }
            return true
        }//   סוף בדיקת שם המוצר

        function checkDesName() {
            des = document.getElementById("itemDescription1").value;
            if (des.length < 2) {
                desErr.innerHTML = "אורך תיאור המוצר לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת תיאור מוצר

        function checkPriceName() {
            price = document.getElementById("itemPrice1").value;
            if (price <= 0) {
                priceErr.innerHTML = "המחיר לא תקין חובה להזין מספר חיובי!";
                return false;
            }
            return true
        }// סוף בדיקת מחיר

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>הכנס/י כאן את מה שתרצה להוסיף לתפריט:
    </h2>

    <form runat="server" method="post" class="form-narrow">

        <label>שם מוצר</label>
        <input type="text" name="itemName" id="itemName1" />
        <span id="nameErr"></span>

        <label>תיאור המוצר</label>
        <input type="text" name="itemDescription" id="itemDescription1" />
        <span id="desErr"></span>

        <label>מחיר המוצר</label>
        <input type="text" name="itemPrice" id="itemPrice1" />
        <span id="priceErr"></span>

        <label>בחר תמונה מהגלריה:</label>
        <select name="itemImage">
            <%
                // חיפוש הקבצים בתיקייה וייצור רשימה
                string path = Server.MapPath("Images/items/");
                if (System.IO.Directory.Exists(path))
                {
                    string[] files = System.IO.Directory.GetFiles(path);
                    foreach (string file in files)
                    {
                        string fileName = System.IO.Path.GetFileName(file);
                        Response.Write("<option value='Images/" + fileName + "'>" + fileName + "</option>");
                    }
                }
            %>
        </select>

        <button type="submit" onclick="return checkAll();">שלח</button>
        <br />

    </form>
    <%=st %>
</asp:Content>

