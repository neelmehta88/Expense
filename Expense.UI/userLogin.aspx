<%@ Page Title="User Login" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="Expense.UI.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="conatiner">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="image/generaluser.png" />

                                </center>
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>User Login</h2>

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
                                    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="txtEmail" placeholder="EmailID" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="txtPwd" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <br />
                                </div>

                                <div class="form-group d-grid gap-2">
                                    
                                    <asp:Button ID="BtnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="BtnLogin_Click" />

                                </div>
                            
                                <div class="form-group d-grid gap-2">
                                    <br />
                                    <asp:Button ID="BtnSignup" class="btn btn-info" runat="server" Text="Signup" OnClick="BtnSignup_Click"/>
                                </div>
                            </div>
                        </div>


                    
                    </div>
                </div>

                <strong>

                <a href="Homepage2.aspx"><< Back to home&nbsp;
                </a>
                <br />

               <%-- <a href="HomePage.aspx">
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
                </a>--%>
                </strong><asp:RequiredFieldValidator ID="EmailValidator" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email Id" Font-Bold="True" Font-Underline="True" SetFocusOnError="True" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                <strong>

                <asp:Label ID="Label2" runat="server"></asp:Label>
                </strong>

                <br />

                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" Font-Bold="True" Font-Underline="True" SetFocusOnError="True" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                <hr />
                
            </div> 
        </div>
    </div>

</asp:Content>
