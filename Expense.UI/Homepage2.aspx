<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="Homepage2.aspx.cs" Inherits="Expense.UI.Homepage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container-fluid{
            background-color:black;
            color:white;
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
                            <img src="image/hp.jpeg" class="img-responsive img-fluid" />
                        </div>

                        <div class="col-7">
                            <p></p>
                            <div class="row">
                                <div class="col-7">
                                    <h5>Managing money can be hard. Don’t do it alone.</h5>
                                    <asp:Button ID="BtnHPLets" runat="server" Text="Lets do it together " CssClass="btn btn-sm btn-primary" OnClick="BtnHPLets_Click" />
                                </div>
                            </div>

                            <table>
                                <tbody>
                                    <tr>
                                        <td scope="row"></td>
                                        <td>our</td>
                                    </tr>

                                    <tr>
                                        <td scope="row"></td>
                                        <td>our</td>
                                    </tr>

                                    <tr>
                                        <td scope="row"></td>
                                        <td>our</td>
                                    </tr>
                                </tbody>
                            </table>






                    </div>
                </div>

                <hr />










            </div>
        </div>
    </div>
 
</asp:Content>
