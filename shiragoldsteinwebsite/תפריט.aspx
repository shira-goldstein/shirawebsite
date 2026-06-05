<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="תפריט.aspx.cs" Inherits="גלריה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .gallery {
            display: flex; /*מסדר את התמונות בשורה */
            flex-wrap: wrap; /*יורד שורה כשנגמר המקום*/
            gap: 20px; /*רווח בין המנות*/
            justify-content: center; /*ממורכז לאמצע*/
            direction: rtl; /*יישור לימין לעברית*/
            margin-top: 20px;
            min-height: 85vh; /*מכריח את אזור התמונות לתפוס לפחות 60% מגובה המסך*/
            margin-bottom: 50px; /*מוסיף קצת רווח מתחת למנות כדי שהטקסט לא יידבק אליהן*/
        }

        }

        .card {
            width: 300px; /* רוחב כל מנה */
            background-color: darkorange; /* רקע לבן לכרטיסייה */
            border-radius: 10px; /* פינות מעוגלות */
            box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* צל קטן */
            padding: 15px; /* מרווח פנימי */
            text-align: right; /* טקסט מיושר לימין */
        }

            .card img {
                width: 100%; /* תמונה ממלאת את הרוחב */
                height: 200px; /* גובה אחיד לכל התמונות */
                object-fit: cover; /* חיתוך יפה של התמונה */
                border-radius: 10px;
            }

            .card p b {
                color: #d32f2f; /* צבע אדום למחיר */
                font-size: 1.2em;
            }

        .main-title {
            text-align: center;
        }

        .tableAdds {
            background-color: white;
            padding: 15px;
            border-radius: 10px;
            margin-top: 20px;
            width: 300px; /* רוחב תואם לכרטיסיות */
            border: 1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <form method="post" runat="server" class="glr">
        <h2>התפריט שלנו</h2>
        <!-- כותרת  -->

        <div class="gallery">
            <asp:Repeater ID="rptMenu" runat="server"> <%--עובר על הטבלה ומציג את העמודות בה--%>
                <ItemTemplate>  <%--(תבנית הפריט (דרך ההצגה של כל פריט בטבלה--%>
                    
                    <div class="card">
                        <img src='<%# Eval("itemImage") %>' alt='<%# Eval("itemName") %>' /> <%--מציג את הערך שבתוך העמודה של התמונה--%>
                        <h3><%# Eval("itemName") %></h3> <%--מציג את הערך שבתוך העמודה של שם המוצר--%>
                        <p><%# Eval("itemDescription") %></p> <%--מציג את הערך שבתוך העמודה של תיאור המוצר--%>
                        <p><b>₪<%# Eval("itemPrice") %></b></p> <%--מציג את הערך שבתוך העמודה של מחיר המוצר--%>


                        <asp:Button ID="btnAdd" runat="server" Text="הוסף לסל"
                            
                            CommandName="AddToCart"
                            CommandArgument='<%# Eval("id") %>'
                            OnCommand="btnAdd_Command" />
                    </div>
                </ItemTemplate>

            </asp:Repeater>

            <table class="tableAdds">
                <tr>
                    <td>
                        <strong>תוספות או שינויים </strong>
                        <br />
                        <input type="checkbox" name="souce" checked value="5" id="souce" />קטשופ ומיונז<br />
                        <input type="checkbox" name="salad" value="10" id="salad" />סלט בצד<br />
                        <input type="checkbox" name="noOnion" value="5" id="noOnion" />בלי בצל<br />

                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>רמת חריפות המנות </strong>
                        <br />
                        <input type="radio" name="radio2" checked value="0" id="לא חריף בכלל" />לא חריף בכלל<br />
                        <input type="radio" name="radio2" value="0" id="פיקנטי" />פיקנטי<br />
                        <input type="radio" name="radio2" value="0" id="אקסטרה חריף" />אקסטרה חריף<br />
                    </td>
                </tr>

            </table>

        </div>
    </form>






</asp:Content>



