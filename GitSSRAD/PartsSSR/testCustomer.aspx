<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="testCustomer.aspx.cs" Inherits="testCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="DeleteCustomer" InsertMethod="InsertCustomer" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomer" 
            TypeName="MethodsDB" UpdateMethod="UpdateCustomer">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_County" Type="Char" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="County" Type="Char" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="County" Type="Char" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_County" Type="Char" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" 
            Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="County" HeaderText="County" 
                    SortExpression="County" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" 
                    SortExpression="CreatedDate" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" 
                    SortExpression="LastLoginDate" />
                <asp:BoundField DataField="DeliveryAddress" HeaderText="DeliveryAddress" 
                    SortExpression="DeliveryAddress" />
                <asp:BoundField DataField="DeliveryCity" HeaderText="DeliveryCity" 
                    SortExpression="DeliveryCity" />
                <asp:BoundField DataField="DeliveryCounty" HeaderText="DeliveryCounty" 
                    SortExpression="DeliveryCounty" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" 
            DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
    </p>
</asp:Content>

