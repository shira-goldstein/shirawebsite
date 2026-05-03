<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script lanuage="javascript">
        function checkAll() {
            firstErr.innerHTML = "";
            secondErr.innerHTML = "";

            f = true;

            f = checkFirstName() && f;
            f = checkLastName() && f;

            return f;
        }//סוף פעולה ראשית

        function checkFirstName() {
            name6 = document.getElementById("firstName1").value;
            if (name6.length < 2 || name6.length > 30) {
                firstErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת שם

        function checkLastName() {
            second = document.getElementById("secondName").value;
            if (second.length < 2 || second.length > 30) {
                secondErr.innerHTML = "אורך השם 2 לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת שם

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>הרשמ/י כאן!</h2>
    <br />
    <form method="post" runat="server" onsubmit="return checkAll();">
        שם פרטי:<input type="text" name="firstName1" id="firstName1" /><span id="firstErr"></span>
        <br />
        שם משפחה:<input type="text" name="secondName" id="secondName" /><span id="secondErr"></span>
        <br />

        טלפון:<input type="text" name="number" id="number" /><span id="phonErr"></span>
        <select name="prefix" id="prefix">
            <option value="050">050</option>
            <option value="051">051</option>
            <option value="052">052</option>
            <option value="053">053</option>
            <option value="054">054</option>
            <option value="055">055</option>
            <option value="056">056</option>
            <option value="057">057</option>
            <option value="058">058</option>
            <option value="059">059</option>

        </select>
        <br />
        מייל<input type="text" name="email" id="email" /><span id="emailErr"></span>
        <br />
        משתמש<input type="text" name="username" id="username" /><span id="userErr"></span>
        <br />
        סיסמה<input type="text" name="password" id="password" /><span id="passErr"></span>
        <br />
        <input type="submit" value="שלח" />
    </form>

</asp:Content>

