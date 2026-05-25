<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="דף בית.aspx.cs" Inherits="blablablat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* מוסיפים הגדרה לאזור המרכזי כדי שייתן לתמונה להימתח */
        main {
            display: flex;
            flex-direction: column;
        }

    /* דף הבית תופס את כל ה-main והופך אותו לתמונה */
    .bg {
        background-image: url('https://media.istockphoto.com/id/981092168/photo/steaks-from-fresh-meat.jpg');
        min-height: 85vh; /* גובה מרשים לתמונה */
        width: 100%;
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
        font-size: 60px;
        font-weight: bold;
        text-shadow: 2px 2px 10px black;
        margin-bottom: -10px;
    }

    .welcome2 {
        color: darkorange;
        font-size: 35px;
        font-weight: bold;
        text-shadow: 2px 2px 10px black;
    }
</style>}
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