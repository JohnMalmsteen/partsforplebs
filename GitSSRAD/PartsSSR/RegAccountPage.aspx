<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegAccountPage.aspx.cs" Inherits="RegAccountPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
            width: 547px;
            text-align: left;
            font-size: medium;
        }
    .style5
    {
        width: 81px;
    }
    .style6
    {
        width: 547px;
        font-size: large;
    }
    .style7
    {
         width: 547px;
        font-size: large;
    }
        .style8
        {
            height: 40px;
        }
        .style9
        {
            width: 547px;
            text-align: left;
            font-size: medium;
            height: 40px;
        }
        .style10
        {
            width: 81px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
    Login</h1>
    <p style="text-align: center">
        &nbsp;</p>
<h1 style="text-align: center">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                <strong>Existing Customer</strong></td>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                <strong>New Customer</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <br />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="hlkNewAccount" runat="server" 
                    NavigateUrl="~/ContactDetails.aspx">Create New Account</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style8">
                <asp:HyperLink ID="hlkTestCustomer" runat="server" 
                    NavigateUrl="~/testCustomer.aspx">testCustomer</asp:HyperLink>
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</h1>
</asp:Content>

