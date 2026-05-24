<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="דף בית.aspx.cs" Inherits="blablablat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<style>
    .bg {
        background-image: url('https://media.istockphoto.com/id/981092168/photo/steaks-from-fresh-meat.jpg');
        height: 100%;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;

        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .welcome {
        color: darkorange;
        font-size: 48px;
        font-weight: bold;
        text-shadow: 2px 2px 8px black;
    }

    .welcome2 {
    color: darkorange;
    font-size: 30px;
    font-weight: bold;
    text-shadow: 2px 2px 8px black;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="bg">
    <div class="welcome">
        ג'ינג'י 
    </div>
         <div class="welcome2">
     -בשרים מעושנים- 
 </div>
</div>

</asp:Content>

