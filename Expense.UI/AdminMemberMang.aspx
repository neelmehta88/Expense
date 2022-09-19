<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="AdminMemberMang.aspx.cs" Inherits="Expense.UI.AdminMemberMang" %>
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
                                    <img width="150px" src="image/generaluser.png" />

                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Member Details</h2>
                                </center>

                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5">
                                <asp:Label ID="LblMemberID" runat="server" Text="MemberID"></asp:Label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMemberID" class="form-control"  placeholder="MemberID" runat="server"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <asp:Label ID="LblAccontStat" runat="server" Text="Account Status"></asp:Label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox ID="txtAccountStat" class="form-control" ReadOnly="True" placeholder="Account Status" runat="server"></asp:TextBox>


                                        <asp:LinkButton ID="LBActive" class="btn bg-success ms-1" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LBPending" class="btn bg-warning ms-1" runat="server"><i class="fa-regular fa-hourglass-half"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LBDisable" class="btn bg-danger ms-1" runat="server"><i class="fa-solid fa-ban"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="LblFName" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="txtFName" placeholder="First Name" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="LblLName" runat="server" Text="Last Name"></asp:Label>
                                    <asp:TextBox ID="txtLName" placeholder="Last Name" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <div class="form-group">
                                    <asp:Label ID="LblUName" runat="server" Text="Username"></asp:Label>
                                    <asp:TextBox ID="txtUName" placeholder="Username" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="txtEmail" placeholder="Email" CssClass="form-control" ReadOnly="True" runat="server" ></asp:TextBox>
                                </div>



                                <%--<div class="row">
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
                                </div>--%>


                                <br />

                                <div class="form-group d-grid gap-2">

                                    <asp:Button ID="BtnDeleteAccount" class="btn btn-sm btn-danger" runat="server" Text="Delete Accout" Font-Bold="True" OnClick="BtnDeleteAccount_Click" />

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
                                    <img width="150px" src="image/adminuser.png" />

                                </center>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Member List</h2>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="memberID" HeaderText="memberID" InsertVisible="False" ReadOnly="True" SortExpression="memberID" />
                                        <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                                        <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                                        <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                                        
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                        <asp:BoundField DataField="AccountStatus" HeaderText="AccountStatus" SortExpression="AccountStatus" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpManagementConnection %>" SelectCommand="SELECT * FROM [Signup]"></asp:SqlDataSource>
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
