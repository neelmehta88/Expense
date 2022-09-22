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
                DataTable dt = new DataTable();
                dt = adminLoginService.AdminLogin(adminMaster);
                if (dt.Rows.Count > 0)
                {
                    Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                    Session["role"] = "admin";
                    Response.Redirect("AdminMemberMang.aspx");
                    LblAdminEr.Text = String.Empty; 
                }
                else
                {
                    LblAdminEr.Text = "Check credentials ";
                }



            }
            catch (Exception ex)
            {

                LblAdminEr.Text = ex.Message;
            }
        }

       
    }
}