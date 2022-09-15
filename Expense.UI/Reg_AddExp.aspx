<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Reg_AddExp.aspx.cs" Inherits="Expense.UI.Reg_AddExp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  width="200px" src="image/AddExpense/1.jpg" class="img-thumbnail" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Add Expense</h5>
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="LblDate" runat="server" Text="Date"></asp:Label>
                                    <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="LblNote" runat="server" Text="Note"></asp:Label>
                                    <asp:TextBox ID="TxtNote" runat="server" CssClass="form-control" Placeholder="Enter Note"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="LblAmount" runat="server" Text="Amount"></asp:Label>
                                    <asp:TextBox ID="TxtAmount" runat="server" CssClass="form-control" Placeholder="Enter Amount"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="LblExpCat" runat="server" Text="Expense Category"></asp:Label>
                                    <asp:DropDownList ID="DDLExpCat" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Select Expense Category</asp:ListItem>
                                        <asp:ListItem>Food</asp:ListItem>
                                        <asp:ListItem>Genral</asp:ListItem>
                                        <asp:ListItem>Travel</asp:ListItem>
                                        <asp:ListItem>Entertainment</asp:ListItem>
                                        <asp:ListItem>Bills and Utilities</asp:ListItem>
                                        <asp:ListItem>Groceries</asp:ListItem>
                                        <asp:ListItem>Fuel</asp:ListItem>
                                        <asp:ListItem>Shopping</asp:ListItem>
                                        <asp:ListItem>Commute</asp:ListItem>
                                        <asp:ListItem>Education</asp:ListItem>
                                        <asp:ListItem>EMI</asp:ListItem>
                                        <asp:ListItem>Fitness</asp:ListItem>
                                        <asp:ListItem>Housing</asp:ListItem>
                                        <asp:ListItem>Insurance</asp:ListItem>
                                        <asp:ListItem>Medical</asp:ListItem>
                                        <asp:ListItem>Personal Care</asp:ListItem>
                                        <asp:ListItem>Miscellaneous</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <asp:Button ID="BtnAddExp" runat="server" class="btn btn-primary mx-auto" Text="Add" OnClick="BtnAddExp_Click" />
                            <%--<div class="col-4">
                                <asp:Button ID="BtnAddExp" runat="server" class="btn btn-primary mx-auto" Text="Add" OnClick="BtnAddExp_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="BtnUpdExp" runat="server" class="btn btn-warning" Text="Update" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="BtnDelExp" runat="server" class="btn btn-danger" Text="Delete" />
                            </div>--%>

                            <br />
                            <asp:Label ID="LblAddExpMsg" runat="server"></asp:Label>
                        </div>
                     
                       






                    </div>
                </div>
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="image/icon.jpg" class="img-rounded"/>
                                </center>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Expense Record</h5>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="AddExpenseId" HeaderText="AddExpenseId" SortExpression="AddExpenseId" />
                                        <asp:BoundField DataField="ExpenseDate" HeaderText="ExpenseDate" SortExpression="ExpenseDate" />
                                        <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                        <asp:BoundField DataField="ExpenseCategory" HeaderText="ExpenseCategory" SortExpression="ExpenseCategory" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Expense.Entities.AddExpense" DeleteMethod="DeleteExp" SelectMethod="GetAllExpenses" TypeName="Expense.DataLayer.AddExpenseRepository" UpdateMethod="UpdateExp">
                                    <DeleteParameters>
                                        <asp:Parameter Name="addExpenseID" Type="Int32" />
                                    </DeleteParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>





















                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
