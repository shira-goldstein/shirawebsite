<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>הרשמ/י כאן!
        <br />
        שם פרטי:
        <input type="text" name="firstName1" id="firstName1" />
        <br />
        שם משפחה:<input type="text" name="firstName2" id="firstName2" />
        <br />
        טלפון:<br />
        <input type="text" name="number" id="number" />
        <select name="phone" id="phone">
            <option value="0"> 050</option>
            <option value="1"> 051</option>
            <option value="0"> 050</option>
            <option value="0"> 050</option>
            <option value="0"> 050</option>
            <option value="0"> 050</option>

        </select>
        <br />

        <br />

    </h2>
</asp:Content>

