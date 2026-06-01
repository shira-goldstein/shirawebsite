<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="מנהל.aspx.cs" Inherits="מנהל" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>מנהל</h2>
    <br />
    <form method="post" runat="server" class= "form-narrow">
        שם פרטי:<input type="text" name="firstName1" id="firstName1" />
        <br />
        שם משפחה:<input type="text" name="secondName" id="secondName" />
        <br />
        <input type="submit" value="שלח" />
    </form>
    <%=st%>
<a href="admin_search_product.aspx">חיפוש מוצר</a>
</asp:Content>


