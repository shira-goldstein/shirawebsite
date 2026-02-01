<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>הרשמ/י כאן!</h2>
    <br />
    <form method="post" runat="server">
        שם פרטי:<input type="text" name="firstName1" id="firstName1" />
        <br />
        שם משפחה:<input type="text" name="secondName" id="secondName" />
        <br />

        טלפון:<input type="text" name="number" id="number" />
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
        מייל<input type="text" name="email" id="email" />
        <br />
        משתמש<input type="text" name="username" id="username" />
        <br />
        סיסמה<input type="text" name="password" id="password" />
        <br />
        <input type="submit" value="שלח" />
    </form>

</asp:Content>

