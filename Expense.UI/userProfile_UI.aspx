<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="userProfile_UI.aspx.cs" Inherits="Expense.UI.userProfile_UI" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            text-align: center;
        }
        .auto-style2 {
            flex: 1 0 0%;
            text-align: center;
            background-color: #CCFF99;
        }
    </style>
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
<%--                                    <span>Account Status- </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label3" runat="server" Text="Your Status" BorderStyle="None" Font-Bold="True" BorderColor="#3366CC" BackColor="#0099FF"></asp:Label>--%>
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
                                    <asp:TextBox ID="txtEmail" placeholder="Email" CssClass="form-control" runat="server" OnTextChanged="Page_Load" ReadOnly="True"></asp:TextBox>
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

                                    <asp:Button ID="BtnUpdate" class="btn btn-primary" runat="server" Text="Update" OnClick="BtnUpdate_Click" />

                                </div>
                                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="TextBox1" ErrorMessage="New Password can not be same as Old Password" SetFocusOnError="True"></asp:CompareValidator>

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
                            <div class="auto-style1">
                                <asp:Chart ID="Chart1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource1" Style="font-size: x-large"  BackGradientStyle="HorizontalCenter" AntiAliasing="All">

                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="ExpenseCategory" YValueMembers="Total" ChartType="Doughnut" BorderColor="#003300" BorderDashStyle="Solid" BorderWidth="2"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="True" BorderWidth="2">
<Area3DStyle Enable3D="True"></Area3DStyle>
                                        </asp:ChartArea>
                                    </ChartAreas>
                                    <Titles>
                                        <asp:Title Name="Title1" Text="Summary of Your Expense">
                                        </asp:Title>
                                    </Titles>
                                </asp:Chart>
                            </div>
                        </div>

                         <div class="row">
                            <div class="text-center">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExpManagementConnection %>" SelectCommand="SELECT ExpenseCategory, SUM(Amount) AS Total FROM AddExpense WHERE (Email = @Email) GROUP BY ExpenseCategory">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                     <%--   <div class="row">
                            <div class="col mx-auto">
                                <asp:Button ID="ExportCSV" runat="server" Text="Export Record" OnClick="ExportCSV_Click" />

                            </div>
                        </div>--%>

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
