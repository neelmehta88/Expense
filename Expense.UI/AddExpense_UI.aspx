<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddExpense_UI.aspx.cs" Inherits="Expense.UI.AddExpense_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

     <br />

    <table align="center" class="nav-justified" style="width: 50%">
       
        <tr>
            <td>Expense Date</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Note</td>
            <td>
                <asp:TextBox ID="txtNote" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Amount</td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>ExpenseCategory</td>
            <td>
                <asp:TextBox ID="txtExpCat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnAddExpense" runat="server" OnClick="BtnAddExpense_Click" Text="Add Expense" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />

</asp:Content>
