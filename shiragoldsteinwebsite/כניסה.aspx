<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="כניסה.aspx.cs" Inherits="כניסה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        הכנס/י כאן את שם המשתמש והסיסמה שלך
    </h2>

    

    <label>שם משתמש</label>
    <input type="text" name="username" required>

    <label>סיסמה</label>
    <input type="password" name="password" required>

    <asp:Button ID="btnLogin" runat="server" Text="התחבר" OnClick="btnSubmit_Click" />
        <br/>


    <%=st %>


</asp:Content>

