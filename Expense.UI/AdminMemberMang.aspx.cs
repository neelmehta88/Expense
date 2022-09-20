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
    public partial class AdminMemberMang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Homepage2.aspx");
            }
        }

        protected void BtnGo_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void BtnDeleteAccount_Click(object sender, EventArgs e)
        {
            try
            {
                Signup signup = new Signup();
                AdminLoginService adminLoginService = new AdminLoginService();
                signup.memberID = int.Parse(txtMemberID.Text);
               
                adminLoginService.DeleteMem(signup);
                GridView1.DataBind();

                txtMemberID.Text = String.Empty;
                txtFName.Text = String.Empty;
                txtAccountStat.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtLName.Text = String.Empty;
                txtUName.Text = String.Empty;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LBActive_Click(object sender, EventArgs e)
        {
            try
            {
                Signup signup = new Signup();
                AdminLoginService adminLoginService = new AdminLoginService();
                signup.AccountStatus = txtAccountStat.Text;
                signup.memberID = int.Parse(txtMemberID.Text);
                string active = "active";
                adminLoginService.UpdMemStat(active, int.Parse(txtMemberID.Text));
               
                GridView1.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LBPending_Click(object sender, EventArgs e)
        {
            Signup signup = new Signup();
            AdminLoginService adminLoginService = new AdminLoginService();
            signup.AccountStatus = txtAccountStat.Text;
            signup.memberID = int.Parse(txtMemberID.Text);
            string Pending = "Pending";
            adminLoginService.UpdMemStat(Pending, int.Parse(txtMemberID.Text));

            GridView1.DataBind();
        }

        protected void LBDisable_Click(object sender, EventArgs e)
        {
            Signup signup = new Signup();
            AdminLoginService adminLoginService = new AdminLoginService();
            signup.AccountStatus = txtAccountStat.Text;
            signup.memberID = int.Parse(txtMemberID.Text);
            string Disable = "Disable";
            adminLoginService.UpdMemStat(Disable, int.Parse(txtMemberID.Text));

            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                Signup signup = new Signup();
                AdminLoginService adminLoginService = new AdminLoginService();
                signup.memberID = int.Parse(txtMemberID.Text);
                DataTable dt = new DataTable();
                dt = adminLoginService.CheckMemberIdExits(signup);
                {
                    if (dt.Rows.Count > 0)
                    {
                        txtMemberID.Text = dt.Rows[0]["memberID"].ToString();
                        txtFName.Text = dt.Rows[0]["FName"].ToString();
                        txtLName.Text = dt.Rows[0]["LName"].ToString();
                        txtUName.Text = dt.Rows[0]["UName"].ToString();
                        txtEmail.Text = dt.Rows[0]["Email"].ToString();
                        txtAccountStat.Text = dt.Rows[0]["AccountStatus"].ToString();
                        GridView1.DataBind();
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