using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Expense.UI
{
    public partial class Reg : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LBUserLogin.Visible = true;
                    LBSignup.Visible = true;
                    LinkButton3.Visible = false; //logout
                    LinkButton7.Visible = false; //hello user
                }
                else if (Session["role"].Equals("user"))
                {
                    LBUserLogin.Visible = false;
                    LBSignup.Visible = false;
                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello  " + Session["Email"].ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

       

        protected void LBSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignup.aspx");
        }

        protected void LBUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void LBAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userProfile_UI.aspx");
        }
    }
}