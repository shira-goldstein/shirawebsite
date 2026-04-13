<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_insert_product.aspx.cs" Inherits="admin_insert_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>הכנס/י כאן את מה שתרצה להוסיף לתפריט:
    </h2>

    <form runat="server" method="post">

        <label>שם מוצר</label>
        <input type="text" name="itemName" required>

        <label>תיאור המוצר</label>
        <input type="text" name="itemDescription" required>

        <label>מחיר המוצר</label>
        <input type="text" name="itemPrice" required>

        <button type="submit">שלח</button>
        <br />

    </form>
    <%=st %>
    
</asp:Content>

