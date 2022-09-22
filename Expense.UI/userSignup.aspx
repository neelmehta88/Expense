<%@ Page Title="User Signup" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="userSignup.aspx.cs" Inherits="Expense.UI.userSignup" %>
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
                                    <asp:TextBox ID="txtEmail" placeholder="Email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="txtPwd" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>

                                <div class="form-group d-grid gap-2">

                                    <asp:Button ID="BtnSignup" class="btn btn-success" runat="server" Text="Signup" OnClick="BtnSignup_Click" />

                                </div>
                                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>

                            </div>
                        </div>



                    </div>
                </div>

                <strong>

                <a href="Homepage2.aspx"><< Back to home</a><br />

                
                <asp:RequiredFieldValidator ID="FnameValidator" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="Please Enter First Name" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="LnameValidator" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="Please Enter Last Name" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="UnameValidator" runat="server" ControlToValidate="txtUName" Display="Dynamic" ErrorMessage="Please Enter User Name" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Enter Email" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Please Enter Password" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                
                </strong>&nbsp;<hr />

            </div>
        </div>
    </div>
</asp:Content>
