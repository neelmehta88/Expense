using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Expense.BusinessLayer;
using Expense.Entities;
//using Expense.DataLayer;

namespace Expense.UI
{
    public partial class Signup_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {

            try
            {
                Signup signup = new Signup();
                signup.FName = txtFName.Text;
                signup.LName = txtLName.Text;
                signup.UName = txtUName.Text;
                signup.Email = txtEmail.Text;
                signup.Password = txtPassword.Text;

                SignupService signupService = new SignupService();
                signupService.Signup(signup);
                LblMsg.Text = "Record added";

            }
            catch (Exception ex)
            {

                LblMsg.Text = ex.Message;
            }
        }

        protected void txtFName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}