<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Reg_ModAddExp.aspx.cs" Inherits="Expense.UI.Reg_ModAddExp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                    <asp:Label ID="Label1" runat="server" Text="AddExpenseID"></asp:Label>
                                    <asp:TextBox ID="TxtAddExpID" runat="server" CssClass="form-control" TextMode="Singleline"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="LblDate" runat="server" Text="Date"></asp:Label>
                                    <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control" TextMode="Singleline"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <div class="form-group" textmode="SingleLine">
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

                            <div class="col-4 d-grid">
                                <asp:Button ID="BtnEdit" runat="server" class="btn btn-lg btn-warning" Text="Edit" />
                            </div>
                            
                            <div class="col-4 d-grid">
                                <asp:Button ID="BtnUpdate" runat="server" class="btn btn-lg btn-success" Text="Update" />
                            </div>

                            <div class="col-4 d-grid">
                                <asp:Button ID="BtnDelete" runat="server" class="btn btn-lg btn-danger" Text="Delete" />
                            </div>

                            <asp:Label ID="LblAddExpMsg" runat="server"></asp:Label>
                        </div>
                     
                       






                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
