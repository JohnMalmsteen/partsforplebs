<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductMBPage.aspx.cs" Inherits="ProductMBPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
            SelectCommand="SELECT [ProductID], [Name], [LongDescription], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [SocketType], [ClockSpeed], [NoCores] FROM [Products] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px">
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" 
                    SortExpression="LongDescription" />
                <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" 
                    SortExpression="ImageFile" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="OnHand" HeaderText="OnHand" 
                    SortExpression="OnHand" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                    SortExpression="Manufacturer" />
                <asp:BoundField DataField="SocketType" HeaderText="SocketType" 
                    SortExpression="SocketType" />
                <asp:BoundField DataField="ClockSpeed" HeaderText="ClockSpeed" 
                    SortExpression="ClockSpeed" />
                <asp:BoundField DataField="NoCores" HeaderText="NoCores" 
                    SortExpression="NoCores" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
    </p>
</asp:Content>

