<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemoryPage.aspx.cs" Inherits="MemoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Memory</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
            SelectCommand="SELECT [Name], [ShortDescription], [ImageFile], [UnitPrice] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="mem" Name="CategoryID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            GroupItemCount="3">
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
                            <asp:Label ID="Label1" runat="server" ForeColor="red" Text='<%# "€ " + Eval("UnitPrice") %>' />
                        
                        </td>                   
                        </tr>
                        <tr>
                            <td>
                            <asp:Button ID="btnAddToBasket" runat="server" Text="Add" align="center" /> 
                            </td>


                        </tr>
                
                </table>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table1" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td2" runat="server" style="">
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
            <td id="Td3" runat="server" style="">
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
    </p>
</asp:Content>

