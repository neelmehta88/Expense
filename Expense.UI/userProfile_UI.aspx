<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="userProfile_UI.aspx.cs" Inherits="Expense.UI.userProfile_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="conatiner-fluid">
        <div class="row">
            <%-- Left side --%>
            <div class="col-md-5">
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
                                    <h2>User Profile</h2>
                                    <span>Account Status- </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label3" runat="server" Text="Your Status" BorderStyle="None" Font-Bold="True" BorderColor="#3366CC" BackColor="#0099FF"></asp:Label>
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



                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                                    <asp:TextBox ID="txtPwd" placeholder="Old Password" CssClass="form-control" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                    <asp:TextBox ID="TextBox1" placeholder="New Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                                    </div>
                                </div>


                                

                                <div class="form-group d-grid gap-2">

                                    <asp:Button ID="BtnUpdate" class="btn btn-primary" runat="server" Text="Update" />

                                </div>
                                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>

                            </div>
                        </div>



                    </div>
                </div>

                <a href="HomePage.aspx"><strong><< Back to home</strong></a>
                <hr />

            </div>



            <%-- Right hand side part --%>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="image/icon.jpg" />

                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Expense Summary</h2>
                                    <span>Account Status- </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label4" runat="server" Text="Your Status" BorderStyle="None" Font-Bold="True" BorderColor="#3366CC" BackColor="#0099FF"></asp:Label>
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
                                <asp:GridView class="table table-striped table-bordered"  ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                        <%--<div class="row">
                            <div class="col-md-6">
                               <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="TextBox2" placeholder="First Name" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                                    <asp:TextBox ID="TextBox3" placeholder="Last Name" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="TextBox4" placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="TextBox5" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>



                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Old Password"></asp:Label>
                                    <asp:TextBox ID="TextBox6" placeholder="Old Password" CssClass="form-control" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="New Password"></asp:Label>
                                    <asp:TextBox ID="TextBox7" placeholder="New Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                                    </div>
                                </div>


                                

                                <div class="form-group d-grid gap-2">

                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Update" />

                                </div>
                                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>

                            </div>
                        </div>--%>



                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
