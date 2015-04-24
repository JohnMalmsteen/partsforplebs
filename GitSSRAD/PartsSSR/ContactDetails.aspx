<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactDetails.aspx.cs" Inherits="ContactDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 252px;
        }
        .style8
        {
            width: 145px;
        }
        .style9
        {
            width: 134px;
        }
        .style10
        {
            width: 136px;
        }
    .style11
    {
        width: 215px;
        height: 23px;
    }
        .style12
        {
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Contact Details</h1>
    <p>
        <asp:SqlDataSource ID="dsCounty" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
            SelectCommand="SELECT * FROM [County]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dsCustomer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PartsForPlebsConnectionString %>" 
            SelectCommand="SELECT * FROM [Customers]">
        </asp:SqlDataSource>
    </p>
    <p>
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
    <table class="style1">
        <tr>
            <td class="style11">
                First Name</td>
            <td class="style4">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFname" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="First Name Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Last Name</td>
            <td class="style4">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLname" runat="server" 
                    ControlToValidate="txtLname" ErrorMessage="Surname Required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Mobile Phone</td>
            <td class="style4">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Enter number in the format xxx-xxxxxxx" 
                    ValidationExpression="\(?[\d]{3}\)?[\s-]?[\d]{3}[\s-]?[\d]{4}" 
                    ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ErrorMessage="Email Required" ControlToValidate="txtEmail" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invaild Format" 
                    ValidationExpression="\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}" ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Invoice Address</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Address</td>
            <td class="style4">
                <asp:TextBox ID="txtAddress" runat="server" Rows="2"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                    ErrorMessage="Address Required" ControlToValidate="txtAddress" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Town/City</td>
            <td class="style4">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                    ErrorMessage="City or Town Required" ControlToValidate="txtCity" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                County</td>
            <td class="style4">
                <asp:DropDownList ID="dlCounty" runat="server" DataSourceID="dsCounty" 
                    DataTextField="CountyName" DataValueField="CountyCode">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Same delivery Address</td>
            <td class="style4">
                <asp:CheckBox ID="chkbDelivery" runat="server" 
                    oncheckedchanged="chkbDelivery_CheckedChanged" AutoPostBack="True" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Deliver To</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Address</td>
            <td class="style4">
                <asp:TextBox ID="txtDelAddress" runat="server" Rows="2"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Town/City</td>
            <td class="style4">
                <asp:TextBox ID="txtDelCity" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                County</td>
            <td class="style4">
                <asp:DropDownList ID="dlDelCounty" runat="server" DataSourceID="dsCounty" 
                    DataTextField="CountyName" DataValueField="CountyCode">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                User name</td>
            <td class="style4">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Set Password</td>
            <td class="style4">
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ErrorMessage="Password Required" ControlToValidate="txtPass" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" 
                    ErrorMessage="Password must be between 4 and 8 digits long and include at least one numeric digit." 
                    ValidationExpression="(?=.*\d).{4,8}" ControlToValidate="txtPass" 
                    ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Confirm Password</td>
            <td class="style4">
                <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="comvalConPassword" runat="server" 
                    ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" 
                    ErrorMessage="Passwords do not match" ForeColor="Red" Display="Dynamic">*</asp:CompareValidator>
            </td>
        </tr>
    </table>
    <p style="height: 46px">
        <table cellpadding="3" class="style1">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Button ID="btnProceed" runat="server" Height="25px" 
                        onclick="btnProceed_Click" Text="Proceed" Width="90px" />
                </td>
                <td class="style10">
                    <asp:Button ID="btnClr" runat="server" onclick="btnClr_Click" Text="Clear" 
                        Width="90px" CausesValidation="False" />
                </td>
                <td class="style12">
                    <asp:Button ID="btnDefaults" runat="server" onclick="btnDefaults_Click" 
                        Text="dummyData" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" onclick="bynCancel_Click" 
                        Text="Cancel" Width="90px" CausesValidation="False"/>
                </td>
            </tr>
        </table>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
        HeaderText="You have the following errors which need to be fixed" />
</asp:Content>

