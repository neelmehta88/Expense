<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Homepage2.aspx.cs" Inherits="Expense.UI.Homepage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container-fluid{
            /*background-color:black;*/
           /* color:b;*/
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="row">
                        <div class="col-7">
                            <br />
                            <h1>Know where you spend</h1>

                        </div>
                    </div>
                    <hr />

                    
                    <div class="row">
                        <div class="col-5">
                            <h4>Perfom all the basic opertaions</h4>
                            <h6>Such as Adding the Expense</h6>
                            <h6>Updating Expense</h6>
                            <h6>Delete Expense </h6>
                            <h6>Analysis of Expense </h6>
                            <h6>Export Expense Report</h6>
                        </div>


                        <div class="col-7">
                            <img src="image/9.png" class="img-responsive img-fluid" />
                        </div>
                    </div>

                   <%-- <div class="row">
                        <div class="col-5">
                            <img src="image/8.png" class="img-responsive img-fluid" />
                        </div>

                        <div class="col-7">
                            <p></p>
                            <div class="row">
                                <div class="col-7">
                                    <h5>Managing money can be hard. Don’t do it alone.</h5>
                                    <asp:Button ID="BtnHPLets" runat="server" Text="Lets do it together " CssClass="btn btn-sm btn-primary" OnClick="BtnHPLets_Click" />
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <hr />











                </div>
            </div>
        </div>
    </div>
 
</asp:Content>
