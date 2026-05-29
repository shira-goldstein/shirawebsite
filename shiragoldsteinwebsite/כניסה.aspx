<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form method="post" runat="server">
        <h2>הכנס/י כאן את שם המשתמש והסיסמה שלך
        </h2>

        <label>שם משתמש</label>
        <input type="text" name="username" required>

        <label>סיסמה</label>
        <input type="password" name="password" required>

        <button type="submit">התחבר</button>

    </form>

    <%=st %>
</asp:Content>

