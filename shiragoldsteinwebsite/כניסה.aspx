<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        הכנס/י כאן את שם המשתמש והסיסמה שלך
    </h2>

    <form runat="server">

    <label>שם משתמש</label>
    <input type="text" name="username" required>

    <label>סיסמה</label>
    <input type="password" name="password" required>

    <button type="submit">התחבר</button>
        <br/>
        שם משתמש= <%=username %>
        <br/>
        סיסמה= <%=password %>
</form>

</asp:Content>

