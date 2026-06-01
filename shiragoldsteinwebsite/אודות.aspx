<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="אודות.aspx.cs" Inherits="אודות" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style> 
        img.myPicture {
    width: 300px;        /* רוחב שמתאים בדיוק לתמונה נחמדה ולא גדולה */
    height: auto;        /* שומר על הפרופורציות של התמונה שלא תתעוות */
    border-radius: 15px; /* פינות מעוגלות למראה רך */
    box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* צל עדין */
    display: block;
    margin: 20px 0;      /* מרווח למעלה ולמטה */
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <form method="post" runat="server" class="form-narrow">
    <h2>מי אני? </h2>
    <table>
        <tr>
            <td>שירה גולדשטיין, ילדה בת 16 מכפר סבא
            </td>
        </tr>
         <tr>
     <td>תלמידת תיכון כצנלסון במגמת הנדסת תוכנה
     </td>
 </tr>
                <tr>
    <td>
        ג'ינג'י זה עסק ביתי שבן דוד שלי שאני מאוד אוהבת פתח, שבו הוא מכין כל מיני מנות בשריות ומוכר אותן לאנשים בעיר שלו.
       
        וחשבתי שאם כבר אני בונה אתר אז יהיה נחמד לעשות את זה בשבילו ושהוא יוכל לעזור לי עם הפרטים. 

    </td>
</tr>
    <tr>
    <td>
    <img class="myPicture" src="images/ba44b489-5bc6-4a8c-b9a4-35ff256059e2%20(1).png" />
    </td>
</tr>
        </table>
        </form>
</asp:Content>

