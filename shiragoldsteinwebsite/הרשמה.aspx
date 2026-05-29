<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script lanuage="javascript">
        function checkAll() {
            firstErr.innerHTML = "";
            secondErr.innerHTML = "";
            phonErr.innerHTML = "";
            emailErr.innerHTML = "";
            userErr.innerHTML = "";
            passErr.innerHTML = "";

            f = true;

            f = checkFirstName() && f;
            f = checkLastName() && f;
            f = checkPhoneName() && f;
            f = checkEmailName() && f;
            f = checkUserName() && f;
            f = checkPassName() && f;

            return f;
        }//סוף פעולה ראשית

        function checkFirstName() {
            name6 = document.getElementById("firstName1").value;
            if (name6.length < 2 || name6.length > 30) {
                firstErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }
            return true
        }//  סוף בדיקת שם 

        function checkLastName() {
            second = document.getElementById("secondName").value;
            if (second.length < 2 || second.length > 30) {
                secondErr.innerHTML = "אורך השם המשפחה לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת שם משפחה

        function checkPhoneName() {
            phone = document.getElementById("number").value;
            if (phone.length != 7) {
                phonErr.innerHTML = "אורך מספר הטלפון לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת טלפון

        function checkEmailName() {
            email = document.getElementById("email").value;
            if (email.length < 2 || email.length > 30) {
                emailErr.innerHTML = "כתובת האימייל לא תקינה";
                return false;
            }
            return true
        }// סוף בדיקת מייל

        function checkUserName() {
            user = document.getElementById("username").value;
            if (user.length < 2 || user.length > 30) {
                userErr.innerHTML = "שם המשתמש לא תקין";
                return false;
            }
            return true
        }// סוף בדיקת שם משתמש

        function checkPassName() {
            pass = document.getElementById("password").value;
            if (pass.length < 2 || pass.length > 30) {
                passErr.innerHTML = "הסיסמה לא תקינה";
                return false;
            }
            return true
        }// סוף בדיקת סיסמה

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form method="post" runat="server">
        <h2>הרשמ/י כאן!</h2>
        <br />

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
        <button type="submit" onclick="return checkAll();">שלח</button>
    </form>
</asp:Content>


