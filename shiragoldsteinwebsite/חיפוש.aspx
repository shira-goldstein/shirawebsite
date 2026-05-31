<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="חיפוש.aspx.cs" Inherits="חיפוש" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server" class="form-narrow">

   <h2>חפש מנה בתפריט</h2>
<label>הקלד שם מנה או חלק משם:</label>
<input type="text" name="searchName" placeholder="למשל: סטייק..." />
<button type="submit">חפש</button>

<div class="gallery">
    <asp:Repeater ID="rptResults" runat="server">
        <ItemTemplate>
            <div class="card">
                <h3><%# Eval("itemName") %></h3>
                <p>₪<%# Eval("itemPrice") %></p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
        </form>
</asp:Content>

