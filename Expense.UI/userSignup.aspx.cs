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
    public partial class userSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SignupService signupService = new SignupService();
                Signup signup = new Signup();
                DataTable dt = new DataTable();
                {
                    signup.Email = txtEmail.Text.Trim();
                    dt = signupService.CheckUserExits(signup);
                    if (dt.Rows.Count == 0)
                    {
                        signup.Password = txtPwd.Text.Trim();
                        signup.FName = txtFName.Text;
                        signup.LName = txtLName.Text;
                        signup.UName = txtUName.Text;
                        signup.Email = txtEmail.Text;
                        signup.Password = txtPwd.Text;
                        signupService.Signup(signup);
                        LblMsg.Text = "Record added";
                            
                    }
                    else
                    {
                        LblMsg.Text = "Email alreayd exits";
                    }
                }


                

            }
            catch (Exception ex)
            {

               
                LblMsg.Text = ex.Message;
               
            }
        }
    }
}