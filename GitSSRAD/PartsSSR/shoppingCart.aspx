<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shoppingCart.aspx.cs" Inherits="shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    My Basket</p>
<p>
    <asp:ListBox ID="ListBox1" runat="server" Width="250px"></asp:ListBox>
</p>
<p>
    &nbsp;</p>
    <asp:FormView ID="FormView1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="112px" Width="102px" />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

