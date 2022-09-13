<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="userSignup.aspx.cs" Inherits="Expense.UI.userSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="conatiner">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="image/adminuser.png" />

                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>User Signup</h2>

                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                    <asp:Label ID="LblFName" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="txtFName" placeholder="First Name" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="LblLName" runat="server" Text="Last Name"></asp:Label>
                                    <asp:TextBox ID="txtLName" placeholder="Last Name" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <div class="form-group">
                                    <asp:Label ID="LblUName" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="txtUName" placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="txtEmail" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="txtPwd" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>

                                <div class="form-group d-grid gap-2">

                                    <asp:Button ID="BtnLogin" class="btn btn-success" runat="server" Text="Signup" OnClick="BtnLogin_Click" />

                                </div>
                                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>

                            </div>
                        </div>



                    </div>
                </div>

                <a href="HomePage.aspx"><strong><< Back to home</strong></a>
                <hr />

            </div>
        </div>
    </div>
</asp:Content>
