<%@ Page Title="Add Expense" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Reg_AddExp.aspx.cs" Inherits="Expense.UI.Reg_AddExp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--datatable cdn links--%>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" type="text/javascript"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    
  <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      });
  </script>
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-4">
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
                                    <h5>Add Add Expense</h5>
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
                                    <asp:TextBox ID="TxtDate" runat="server" placeholder="DD/MM/YYYY" CssClass="form-control" TextMode="Date" OnTextChanged="TxtDate_TextChanged"></asp:TextBox>
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
                                    
                                    <asp:DropDownList ID="DDLExpCat" CssClass="form-control" runat="server" >
                                        
                                        <asp:ListItem Selected="True" Enabled="True">Select Expense Category</asp:ListItem>
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
                            
                        </div>

                        <div class=" row">
                            <div class="col">

                                <asp:Label ID="LblAddExpMsg" runat="server"></asp:Label>

                            <asp:RequiredFieldValidator ID="ExpIDValidator" runat="server" ErrorMessage="Enter Expense ID" ControlToValidate="TxtAddExpID" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        
                            <asp:RequiredFieldValidator ID="DateValidator" runat="server" ControlToValidate="TxtDate" ErrorMessage="Enter Date" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            <asp:RequiredFieldValidator ID="AmountValidator" runat="server" ControlToValidate="TxtAmount" ErrorMessage="Enter Amount" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            <asp:RequiredFieldValidator ID="NoteValidator" runat="server" ControlToValidate="TxtNote" ErrorMessage="Enter Note" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDLExpCat" ErrorMessage="Select Category" Font-Bold="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                            </div>
                        </div>








                    </div>
            </div>
        </div>


        <div class="col-md-8">
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
                                <h5>Expense Record </h5>
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
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

                                  
                                    <Columns>
                                        <asp:BoundField DataField="AddExpenseId" HeaderText="Expense ID" SortExpression="AddExpenseId" />
                                        <asp:BoundField DataField="ExpenseDate" HeaderText="Expense Date" SortExpression="ExpenseDate" DataFormatString="{0:dd-M-yyyy}" />
                                        <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                        <asp:BoundField DataField="ExpenseCategory" HeaderText="Expense Category" SortExpression="ExpenseCategory" />
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpManagementConnection %>" SelectCommand="SELECT [AddExpenseId], [ExpenseDate], [Note], [Amount], [ExpenseCategory] FROM [AddExpense] WHERE ([Email] = @Email)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <%--<asp:Label ID="Label2" runat="server" Text="Expense ID"></asp:Label>--%>
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" placeholder="Expense ID" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Go</asp:LinkButton>
                                      </div>
                        </div>

                        <div class="col-4">
                                <asp:Button ID="BtnUpdate" runat="server" class="btn btn-sm btn-success w-100" Text="Update" Font-Size="Large" OnClick="BtnUpdate_Click" CausesValidation="False" />
                            </div>

                            <div class="col-4">
                                <asp:Button ID="BtnDelete" runat="server" class="btn btn-sm btn-danger w-100" Text="Delete" Font-Size="Large" OnClick="BtnDelete_Click" CausesValidation="False" />
                                <br />
                            </div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col w-100">
                            <asp:Button ID="ExportCSV" runat="server" class="btn btn-sm btn-warning w-100" Text="Export Record" CausesValidation="False" OnClick="ExportCSV_Click" />

                        </div>
                    </div>





















                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
