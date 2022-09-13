<%@ Page Title="" Language="C#" MasterPageFile="~/Reg.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Expense.UI.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            max-width: 100%;
            height: 425px;
            width: 100%;
            position: relative;
            float: left;
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            max-width: 100%;
            height: 501px;
            width: 100%;
            position: relative;
            float: left;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="image/cover5.jpg"  class="auto-style2"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">  
                    <center>
                        <h2>Our Features</h2>
                        <p><strong>Our Primary Features</strong></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="image/icon.jpg" />
                        <h4>CRUD opertaion</h4>
                    </center>
                </div>

                <div class="col-md-4">
                     <center>
                        <img width="150px" src="image/icon.jpg" />
                         <h4>Analyse the expense</h4>
                    </center>
                </div>

                <div class="col-md-4">
                     <center>
                        <img width="150px" src="image/icon.jpg" />
                         <h4>Export the expense report</h4>
                    </center>
                </div>
            </div>
       </div>
    </section>


    <section>
        <img src="image/cover6.jpg"  class="auto-style1"/>
    </section>
</asp:Content>
