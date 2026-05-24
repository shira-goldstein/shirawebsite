<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="גלריה.aspx.cs" Inherits="גלריה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h2>
       התמונות שלנו:
   </h2>
    <!DOCTYPE html> <!-- אומר לדפדפן שזה קובץ HTML5 -->

<html> <!-- תחילת האתר + השפה היא עברית -->

<head> <!-- מידע על האתר שלא רואים בדף עצמו -->

<style> /* תחילת עיצוב CSS */

.gallery {
  flex-wrap: wrap;
  display: flex; /* מסדר את התמונות בשורה */
  gap: 10px; /* רווח של 10 פיקסלים בין התמונות */
}

.gallery img {
  width: 300px; /* רוחב כל תמונה */
  border-radius: 10px;
        margin-top: 0px;
    }

</style> <!-- סוף העיצוב -->

</head> <!-- סוף החלק של ההגדרות -->

<body> <!-- כל מה שרואים באתר -->

<h2>גלריית תמונות</h2> <!-- כותרת בגודל בינוני -->

<div class="gallery"> <!-- קופסה שמכילה את כל התמונות -->

  <img src="https://medias.timeout.co.il/www/uploads/2019/05/%D7%90%D7%99%D7%A6%D7%99%D7%A7-%D7%94%D7%92%D7%93%D7%95%D7%9C-%D7%90%D7%A0%D7%98%D7%95%D7%9C%D7%99-600x600.jpg" alt="סטייק 1"> <!-- תמונה ראשונה -->
  
  <img src="https://gilacooking.co.il/wp-content/uploads/skewered-beef-ribs.png" alt="שיפוד צלעות בשר 2"> <!-- תמונה שנייה -->
  
  <img src="https://imageproxy.wolt.com/assets/683eff6d2c97c6c5c80d5b10" alt="שניצל 3"> <!-- תמונה שלישית -->

  <img src="https://2.a7.org/files/pictures/000/1149662.jpg" alt="אסדו 1"> <!-- תמונה רביעית -->

  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5u-0IGAzXiR2An-uMQk5Z0KxwG0CCjsqdoQ&s" alt="המבורגר 1"> <!-- תמונה חמישית -->

  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5u-0IGAzXiR2An-uMQk5Z0KxwG0CCjsqdoQ&s" alt="המבורגר 1"> <!-- תמונה חמישית -->


</div> <!-- סוף קופסת הגלריה -->

</body> <!-- סוף תוכן האתר -->

</html> <!-- סוף קובץ האתר -->
</asp:Content>

