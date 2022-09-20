using Expense.BusinessLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Expense.UI
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {
            try
            {
                AdminLoginService adminLoginService = new AdminLoginService();
                AdminMaster adminMaster = new AdminMaster();    
                adminMaster.UserName = txtUName.Text.Trim();
                adminMaster.Password = txtPwd.Text.Trim();
                adminLoginService.AdminLogin(adminMaster);
                Session["UserName"] = txtUName.Text.ToString();
                Session["Password"] = txtPwd.Text.ToString();
                Session["role"] = "admin";

                //LblAdminEr.Text = "admin logedin....";



                Response.Redirect("AdminMemberMang.aspx");



                //DataTable dt = new DataTable();
                /* dt = adminLoginService.AdminLogin(adminMaster);
                 if(dt.Rows.Count > 0)
                 {
                     Response.Write("<script>alert(' admin logedin....')</script>");
                     //LblAdminEr.Text = "admin logedin....";
                 }
                 else
                 {
                     LblAdminEr.Text = "Check credentials ";
                 }*/



            }
            catch (Exception ex)
            {

                LblAdminEr.Text = ex.Message;
            }
        }
    }
}