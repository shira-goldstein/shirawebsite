<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item_temp2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>
        הכנס/י כאן את מה שתרצה להזמין:
    </h2>

    <form runat="server" method="post">

    <label>שם מוצר</label>
    <input type="text" name="itemName" required>

        סוג הבשר:
<select name="meat" id="meat">
    <option value="עוף">עוף</option>
    <option value="בקר">בקר</option>
    <option value="כבש">כבש</option>
    
</select>

    <label>תיאור המוצר</label>
    <input type="text" name="itemDescription" required>

    <button type="submit">שלח</button>
        <br/>

</form>
    <%=st %>
</asp:Content>

