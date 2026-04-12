<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_search_product.aspx.cs" Inherits="admin_search_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>חיפוש מוצר</h2>
 <br />
 <form method="post" runat="server">
     שם או תיאור המוצר:<input type="text" name="query" id="query" />
     <br />
     <input type="submit" value="שלח" />
 </form>
 <%=st%>
</asp:Content>

