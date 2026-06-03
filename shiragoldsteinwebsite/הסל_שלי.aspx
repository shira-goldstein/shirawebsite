<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="הסל_שלי.aspx.cs" Inherits="הסל_שלי" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form method="post" runat="server" class="form-narrow">
        <div class="cart-container">
            <h2>סל הקניות שלך</h2>

            <div class="gallery">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="card">
                            <h3><%# Eval("itemName") %></h3>
                            <p>מחיר: ₪<%# Eval("itemPrice") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>


            <div class="summary">
                <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
            </div>
            
            <asp:Button ID="btnCheckout" runat="server" Text="סיים רכישה" OnClick="btnCheckout_Click" />
        </div>

           </form> 
</asp:Content>
