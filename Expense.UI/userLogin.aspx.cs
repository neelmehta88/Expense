using Expense.BusinessLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Expense.UI
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignup.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SignupService signupService = new SignupService();
                Signup signup = new Signup();
                signup.Email = txtEmail.Text.Trim();
                signup.Password = txtPwd.Text.Trim();
                DataTable dt = new DataTable();
                dt = signupService.Login(signup);
                if(dt.Rows.Count > 0)
                {
                    Response.Redirect("HomePage.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                    
                }
               
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}