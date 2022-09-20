<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Reg_AddExp.aspx.cs" Inherits="Expense.UI.Reg_AddExp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet"/>
<script type="text/javascript">
    $(document).ready(function () {

      /*  $(document).ready(function () {
            $('#GridView1').DataTable();
         });*/

        $("#GridView1").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        //$('.table1').DataTable();
    });
</script>


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
                                    <img width="200px" src="image/AddExpense/1.jpg" class="img-thumbnail" />
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
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Expense ID"></asp:Label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtAddExpID" runat="server"  CssClass="form-control" TextMode="Singleline" ></asp:TextBox>

                                        <%--<asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton>--%>
                                    </div>
                                </div>
                            </div>

                            <%--<div class="col-1">
                                <div class="form-group">
                                    <asp:LinkButton ID="LinkButton1" runat="server">Go</asp:LinkButton>
                                </div>
                            </div>--%>

                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Label ID="LblDate" runat="server" Text="Date"></asp:Label>
                                    <asp:TextBox ID="TxtDate" runat="server" placeholder="DD/MM/YYYY" CssClass="form-control" TextMode="Singleline"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-6">
                                <div class="form-group" textmode="SingleLine">
                                    <asp:Label ID="LblNote" runat="server" Text="Note"></asp:Label>
                                    <asp:TextBox ID="TxtNote" runat="server" CssClass="form-control" Placeholder="Enter Note"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-6">
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
                            <div class="col">
                                <asp:Button ID="BtnAddExp" runat="server" class="btn btn-sm btn-primary w-100" Text="Add" OnClick="BtnAddExp_Click" Font-Size="Large" />
                            </div>

                            <%--<div class="col-4">
                                <asp:Button ID="BtnUpdate" runat="server" class="btn btn-sm btn-success w-100" Text="Update" Font-Size="Large" OnClick="BtnUpdate_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="BtnDelete" runat="server" class="btn btn-sm btn-danger w-100" Text="Delete" Font-Size="Large" OnClick="BtnDelete_Click" />
                            </div>--%>

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
                                <img width="150px" src="image/icon.jpg" class="img-rounded" />
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
                            <center>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered table-info" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="AddExpenseId" AllowSorting="True" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="AddExpenseId" HeaderText="AddExpenseId" SortExpression="AddExpenseId" InsertVisible="False" ReadOnly="True" />
                                        <asp:BoundField DataField="ExpenseDate" HeaderText="ExpenseDate" SortExpression="ExpenseDate" />
                                        <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                        <asp:BoundField DataField="ExpenseCategory" HeaderText="ExpenseCategory" SortExpression="ExpenseCategory" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpManagementConnection %>" SelectCommand="SELECT * FROM [AddExpense]"></asp:SqlDataSource>
                                <br />
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <%--<asp:Label ID="Label2" runat="server" Text="Expense ID"></asp:Label>--%>
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" placeholder="Expense ID" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton>
                                      </div>
                        </div>

                        <div class="col-4">
                                <asp:Button ID="BtnUpdate" runat="server" class="btn btn-sm btn-success w-100" Text="Update" Font-Size="Large" OnClick="BtnUpdate_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="BtnDelete" runat="server" class="btn btn-sm btn-danger w-100" Text="Delete" Font-Size="Large" OnClick="BtnDelete_Click" />
                            </div>
                    </div>





















                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
