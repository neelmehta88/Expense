<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup_UI.aspx.cs" Inherits="Expense.UI.Signup_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table align="center" style="width: 50%">
        <tr>
            <td class="text-left">First Name: </td>
            <td style="width: 481px">
                <asp:TextBox ID="txtFName" runat="server" OnTextChanged="txtFName_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FnameValidator" runat="server" ErrorMessage="Enter the Valid Details " ControlToValidate="txtFName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left">Last Name:</td>
            <td style="width: 481px">
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LnameValidator" runat="server" ErrorMessage="Enter the Valid Details" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left">Username: </td>
            <td style="width: 481px">
                <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UnameValidator" runat="server" ErrorMessage="Enter the Valid Details" ControlToValidate="txtUName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 25px" class="text-left">Email:</td>
            <td style="height: 25px; width: 481px;">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Enter the Valid Details" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="EmailRegEx" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">Password:</td>
            <td style="width: 481px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" ErrorMessage="Enter the Valid Details" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
            <td style="height: 25px" class="text-left">Confirm Password :</td>
            <td style="height: 25px; width: 481px;">
                <asp:TextBox ID="txtConPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConPwdValidator" runat="server" ErrorMessage="Enter the Valid Details" ControlToValidate="txtConPwd"></asp:RequiredFieldValidator>&nbsp;<asp:CompareValidator ID="PwdComValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPassword" ControlToValidate="txtConPwd">Missmatch Password</asp:CompareValidator>
                
            </td>
        </tr>--%>
       <%-- <tr>
            <td style="height: 46px" class="text-left"></td>
            <td style="height: 46px; width: 481px">
                <br />
                <asp:Button ID="BtnSignup" runat="server" Text="Signup" OnClick="BtnSignup_Click" />
            </td>
        </tr>--%>
        <tr>
            <td class="text-left">&nbsp;</td>
            <td style="width: 481px">
                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
