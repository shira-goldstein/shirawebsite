<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הסל_שלי.aspx.cs" Inherits="הסל_שלי" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 20px; direction: rtl; text-align: right;">
        <h2>ביצוע הזמנה</h2>

        <label>בחר מנה:</label>
        <asp:DropDownList ID="ddlMeals" runat="server">
            <asp:ListItem Text="סטייק אנטריקוט - 129₪" Value="129" />
            <asp:ListItem Text="קציצות בשר - 110₪" Value="110" />
            <asp:ListItem Text="שניצל עוף - 60₪" Value="60" />
            <asp:ListItem Text="קבב - ₪85" Value="85" />
            <asp:ListItem Text="המבורגר - ₪90" Value="90" />
            <asp:ListItem Text="צלעות כבש - ₪105" Value="105" />
            <asp:ListItem Text="אסאדו - ₪120" Value="120" />
            <asp:ListItem Text="ארעייס - ₪140" Value="140" />
            
        </asp:DropDownList>
        <br /><br />

        <label>שינויים ותוספות:</label>
        <asp:CheckBoxList ID="cblExtras" runat="server">
            <asp:ListItem Text="ללא בצל (+0₪)" Value="0" />
            <asp:ListItem Text="תוספת צ'יפס (+15₪)" Value="15" />
            <asp:ListItem Text="רוטב חריף בצד (+5₪)" Value="5" />
        </asp:CheckBoxList>
        <br />

        <asp:Button ID="btnCalculate" runat="server" Text="חשב מחיר סופי" OnClick="btnCalculate_Click" />
        <br /><br />

        <h3>סה"כ לתשלום: <asp:Label ID="lblTotal" runat="server" Text="0" /> ₪</h3>
    </div>
</asp:Content>
