using Expense.BusinessLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

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
                if (dt.Rows.Count > 0)
                {
                    Session["FName"] = dt.Rows[0]["FName"].ToString();
                    Session["LName"] = dt.Rows[0]["LName"].ToString();
                    Session["UName"] = dt.Rows[0]["UName"].ToString();
                    Session["Email"] = dt.Rows[0]["Email"].ToString();
                    Session["role"] = "user";
                    

                    if (dt.Rows[0]["AccountStatus"].ToString() == "Active" || dt.Rows[0]["AccountStatus"].ToString() == "Pending")
                    {
                        //dt = signupService.Login(signup);
                        Response.Redirect("Reg_AddExp.aspx");
                    }
                    else if(dt.Rows[0]["AccountStatus"].ToString() == "Disable")
                    {
                        Label2.Text = "Your account is disbale kindly contact the Admin";
                        Session.Clear();

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Credentials');</script>");

                    }


                }
                
                
               
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}