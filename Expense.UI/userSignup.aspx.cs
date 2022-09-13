using Expense.BusinessLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
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
                Signup signup = new Signup();
                signup.FName = txtFName.Text;
                signup.LName = txtLName.Text;
                signup.UName = txtUName.Text;
                signup.Email = txtEmail.Text;
                signup.Password = txtPwd.Text;

                SignupService signupService = new SignupService();
                signupService.Signup(signup);
                LblMsg.Text = "Record added";

            }
            catch (Exception ex)
            {

               
                LblMsg.Text = ex.Message;
               
            }
        }
    }
}