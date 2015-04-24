<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProcessorPage.aspx.cs" Inherits="ProcessorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
        SelectCommand="SELECT [Name], [ShortDescription], [ImageFile], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="cpu" Name="CategoryID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
        SelectCommand="SELECT Name, ShortDescription, ImageFile, UnitPrice FROM Products WHERE (CategoryID = 'cpu') AND (UnitPrice BETWEEN 50 AND 150)">
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Price Range:<br />
                <asp:LinkButton ID="lbtnPrice50" runat="server" onclick="lbtnPrice50_Click">€50 - €150</asp:LinkButton>
                <br />
                <asp:LinkButton ID="lbtnPrice150" runat="server">€150 - €250</asp:LinkButton>
                <br />
            </td>
            <td>
    <asp:ListView ID="ListView1" runat="server"  DataSourceID="SqlDataSource1" 
        GroupItemCount="2" style="margin-left: 230px; text-align: center;" DataKeyNames="Name">


        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>

        <ItemTemplate>
                         <td>
                <table>
                    <tr>
                       <td style="font-family: Arial, Sans-Serif;
                           font-size: 12pt; font-weight: bold" align="center" valign="top">
                           <asp:Label ID="lblName" runat="server"
                                    Text='<%# Eval("Name") %>' />
                       </td>
                    </tr>
                    <tr>
                          <td style="height: 160px; width: 220px"
                               align="center" valign="top">
                            <asp:Image ID="Image1" runat="server"
                                ImageUrl='<%#"~/Images/" +Eval("ImageFile")  %>' />  
                            
                            </td>
                        </tr>
                        <tr>
                        <br />
                        <td style="font-family: Arial, Sans-Serif;
                           font-size: 12pt; font-weight: bold" align="center" valign="top">
                           <asp:Label ID="lblShortDes" runat="server" 
                        Text='<%# Eval("ShortDescription") %>' />
                        
                        </td>                   
                        </tr>
                         <tr>
                        <br />
                        <td style="font-family: Arial, Sans-Serif;
                           font-size: 12pt; font-weight: bold" align="center" valign="top">
                            <asp:Label ID="Label1" runat="server" ForeColor="red" Text='<%# "€ " + Eval("UnitPrice") %>'  />
                        
                        </td>                   
                        </tr>
                        <tr>
                            <td>
                            <asp:Button ID="btnAddToBasket" runat="server" Text="Add" align="center" CommandName="Add" /> 
                            </td>


                        </tr>
                
                </table>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" 
                    Text='<%# Eval("ShortDescription") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

