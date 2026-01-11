<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הרשמה.aspx.cs" Inherits="הרשמה" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2> הרשמ/י כאן!
        <br />
        
        שם פרטי:<input type="text" name="firstName1" id="firstName1" />
        <br />
        שם משפחה:<input type="text" name="firstName2" id="firstName2" />
        <br />
      
        טלפון:<input type="text" name="number" id="number" />
        <select name="phone" id="phone">
            <option value="0"> 050</option>
            <option value="1"> 051</option>
            <option value="2"> 052</option>
            <option value="3"> 053</option>
            <option value="4"> 054</option>
            <option value="5"> 055</option>
            <option value="6"> 056</option>
            <option value="7"> 057</option>
            <option value="8"> 058</option>
            <option value="9"> 059</option>

        </select>
        <br />
        מייל<input type="text" name="email" id="email" />
        <br />


    </h2>
</asp:Content>

