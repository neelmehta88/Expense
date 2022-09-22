<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Expense.UI.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="conatiner">
        <div class="row">
            <div class="col-md-6 mx-auto">
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
                                    <h2>Admin Login</h2>

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
                                    <asp:Label ID="LblUName" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="txtUName" placeholder="Username" CssClass="form-control" runat="server" ></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="txtPwd" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

                                </div>

                                <%--<div class="form-group d-grid gap-2">
                                    
                                    <asp:Button ID="BtnLogin" class="btn btn-success" runat="server" Text="Login" />

                                </div>--%>

                                <div class="form-group d-grid gap-2">
                                    <br />
                                    <asp:Button ID="BtnAdminLogin" class="btn btn-info" runat="server" Text="Login" OnClick="BtnAdminLogin_Click" />
                                </div>
                            </div>
                        </div>



                    </div>
                </div>

                <strong>

                <a href="HomePage.aspx"><< Back to home </a>
                <br />

                <a href="HomePage.aspx">
                <asp:Label ID="LblAdminEr" runat="server"></asp:Label>
                </a>
                </strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName" Display="Dynamic" ErrorMessage="Enter User Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <hr />

            </div>
        </div>
    </div>
</asp:Content>
