<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="תפריט.aspx.cs" Inherits="גלריה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gallery {
            display: flex; /* מסדר את התמונות בשורה */
            flex-wrap: wrap; /* יורד שורה כשנגמר המקום */
            gap: 20px; /* רווח בין המנות */
            justify-content: center; /* ממורכז לאמצע */
            direction: rtl; /* יישור לימין לעברית */
            margin-top: 20px;

            min-height: 85vh; /* מכריח את אזור התמונות לתפוס לפחות 60% מגובה המסך */
            margin-bottom: 50px; /* מוסיף קצת רווח מתחת למנות כדי שהטקסט לא יידבק אליהן */

        }

        .card {
            width: 300px; /* רוחב כל מנה */
            background-color: #ffffff; /* רקע לבן לכרטיסייה */
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

<h2>התפריט שלנו</h2> <!-- כותרת  -->

<div class="gallery"> <!-- קופסה שמכילה את כל התמונות -->
  
    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/pNtQE4xEfdE1qQupoK5SKCYcx2RkPRuH0zXR2jKBY_xVY56mtESbMd80w7_B3d1BVX137b9fFP35AHwbh2jTtlYw07I4w0dGQ0hgOBGIoOuv0Jyf2LgoAFdKjBJ7yInwXyGeIs6Vs35J2q5qRnkEdkcew9yaYXjUYTlk7OvmFF5xuyWdnJIuSdcizr2oZC5B?purpose=fullsize" alt=" סטייק אנטריקוט "/>  <!-- תמונה ראשונה -->
    <h3>סטייק אנטריקוט</h3>
    <p>נתח בקר עסיסי ועשיר בטעם, נצלה בדרך כלל על גריל ומוגש עם תוספות כמו תפוחי אדמה או ירקות.</p>
    <p><b>₪129</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/0EZfiyeV7uCXeB_jcssVisJt-1fy_rvN7A6kOcD323YPc7uB_KGa1ejmRBkDeTmXdkcRulP7kYHhrmQ3CJrLAmtkMUZ9dfxiLg6oxfaEZA2lG6q6_1rb0tw5-rt_uaOaWFph6s66cj0AHriv6U6gO9848z2-o_fNEPO4CP9hso0xqHjc1e8rrQJrXznGpTNo?purpose=fullsize" alt="קציצות בשר "/> <!-- תמונה שנייה -->
    <h3>קציצות בשר ברוטב</h3>
    <p> קציצות בקר מתובלות המבושלות ברוטב עגבניות עשיר</p>
    <p><b>₪110</b></p>
</div>
  
    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/jw1Nk7y-PgpQqT2Z48JuQIk7L5i2CRhcdaR34uML1nrSVhpgBl_rnwXgO5xLEHtI3BN1vj1QasGUw16eYZDIqM1_HsGrGP6rBeMBi0q6-e69OmlNgFWVuu4YeIgH70x1OjPecFcuZ1PFziDm-G4Xxvtzo84JcyhCqSIvgRKTvh3mDKIFbhyOXydDOp91di9Q?purpose=fullsize" alt="שניצל עוף "/> <!-- תמונה שלישית -->
    <h3>שניצל עוף</h3>
    <p> חזה עוף מצופה פירורי לחם ומטוגן עד להזהבה.</p>
    <p><b>₪60</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/CxlBUKaZ5okTxsC9KxDgFEhXA-f1ImhD2TUTa-8l2GTafFS9dNYybsoKmKBUa6JJC_notHz6HP7H5IC1gqYfolNssU1Xb984Tp-2-OL5eecNkd-g40bcUIfeLMB1hFzar_dypuWjeo1-JF21-353ivZQMoO83ClgyBSa-NwAv75cJZQNzgRShOZ2_TmnKulO?purpose=fullsize" alt="קבב "/> <!-- תמונה רביעית -->
    <h3> קבב</h3>
    <p> קציצות בשר מתובלות הנצלות על האש ומוגשות בדרך כלל עם טחינה, סלטים ופיתה.</p>
    <p><b>₪85</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/WThPhOpZkuRrBVnMZim9ILJZMqFQu4TZh2V3qdcPjEVaJhXmgymnWhYRqGY4cZLYxz-Ph3xTBaWQFgygP9s5TfCDtqhUgZd5HqoSlnOhGvPzcpPLgbgZemuOPzK3vn9Tqf4-28slzJ9eRbbhbC-erwSQjGGkZFvu0gYLx04R6iL7VPFfiPtlwo3LQ3y65rK_?purpose=fullsize" alt="המבורגר "/> <!-- תמונה חמישית -->
    <h3> המבורגר</h3>
    <p> ציצת בקר עסיסית בתוך לחמנייה עם ירקות, רטבים ותוספות שונות.</p>
    <p><b>₪90</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/BO9deHTH9at8pxae1YZTwSjGEqHlKkqYDtHF1aGs7l3ubvG6BeNjQ8S-qIUOSFKnVcP7Z9_MmuU5V5zXyVg7zOsbfQB9iodEyeoTZvt4lA3Nl6m94VmJGlVYXtel54roEy5VpXYGVsiqCzyl4fgKABe8Xl2KUtgBCsSCG3PgVmm2YqCirDEA7BcffC5PioVa?purpose=fullsize" alt="צלעות כבש "/> <!-- תמונה חמישית -->
    <h3> צלעות כבש</h3>
    <p> נתח כבש יוקרתי עם טעם עשיר, מוגש לרוב במסעדות גריל ובאירועים מיוחדים.</p>
    <p><b>₪105</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/XguZveAajUERlUVW2160tREVl3PpCmuLCs4lsh0EdttrckQU-cFzCY3VzOx4UPycrZO16mKGzd7CDKBHaq8yihTh6rnXgpdRu_9QWkfkNEas9KtQD5iXRE-x1hmpcWBpz8tn3cxaHOY1WqFEc4r44ecKnlXzOYxD6kB4OpaG1HvQneki_4GyCy3xnzTdwq1u?purpose=fullsize" alt="אסאדו "/> <!-- תמונה רביעית -->
    <h3>אסאדו</h3>
    <p> צלעות בקר המתבשלות לאט עד שהבשר רך ועסיסי במיוחד.</p>
    <p><b>₪120</b></p>
</div>

    <div class="card">
    <img src="https://images.openai.com/static-rsc-4/LibQ3xS4er4_fmQ32yagSZcmqTHjHMPnI5Nlg5UlGsvzvtqTkHb3TrcM_GOur5jqgzpy4mLLAQGiQlxESPH_6aWMTypC-EfGtJvWD7Kli1-fQSkSRso6n14kK1kAuw35_xhxmxPMzscOfyh5mCPzUFm_B8S26LWMWly-VzX0FR_VC9jGoccSZ-17W_p15QUK?purpose=fullsize" alt="ארעייס "/> <!-- תמונה שישית -->
    <h3>ארעייס</h3>
    <p> פיתה ממולאת בבשר טחון מתובל, הנצלית על הגריל או במחבת עד שהפיתה פריכה והבשר עסיסי.</p>
    <p><b>₪140</b></p>
</div>

  
  
  







</asp:Content>

