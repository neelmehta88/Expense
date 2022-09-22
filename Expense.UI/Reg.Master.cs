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
                    LinkButton4.Visible = false;
                    LBAdmin.Visible= false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LBUserLogin.Visible = false;
                    LBSignup.Visible = false;
                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello  " + Session["Email"].ToString();
                    LinkButton4.Visible = true;
                    LBAdmin.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LBUserLogin.Visible = false;
                    LBSignup.Visible = false;
                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello  " + Session["UserName"].ToString();
                    LinkButton4.Visible = false;

                    LBAdmin.Visible = true;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

       

        protected void LBSignup_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("userSignup.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LBUserLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("userLogin.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LBAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("userProfile_UI.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            /*Session["Email"] = "";
            Session["UserName"] = "";
            Session["status"] = "";

            LBUserLogin.Visible = false;
            LBSignup.Visible = true;*/
           
            

            Session.Clear();
            Response.Redirect("Homepage2.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg_AddExp.aspx");
        }

        protected void LBAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberMang.aspx");
        }

        /*protected void LinkButton3_Click(object sender, EventArgs e)
        {
            

        }*/
    }
}