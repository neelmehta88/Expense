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
    public partial class userProfile_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Homepage2.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    GetUser();
                }
            }
        }

        void GetUser()
        {
            Signup signup = new Signup();
            SignupService signupService = new SignupService();
            DataTable dt = new DataTable();
            signup.Email = Session["Email"].ToString();
            dt = signupService.CheckUserExits(signup);
            if (dt.Rows.Count > 0)
            {
                txtFName.Text = dt.Rows[0]["FName"].ToString();
                txtLName.Text = dt.Rows[0]["LName"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                txtPwd.Text = dt.Rows[0]["Password"].ToString();
                txtUName.Text = dt.Rows[0]["UName"].ToString();

                Label4.Text = dt.Rows[0]["AccountStatus"].ToString();
                if (dt.Rows[0]["AccountStatus"].ToString() == "Active")
                {
                    Label4.Attributes.Add("class", "badge badge-pill badge-success bg-success");
                }
                else if(dt.Rows[0]["AccountStatus"].ToString() == "Pending")
                {
                    Label4.Attributes.Add("class", "badge badge-pill badge-success bg-warning");
                }
                else if (dt.Rows[0]["AccountStatus"].ToString() == "Disable")
                {
                    Label4.Attributes.Add("class", "badge badge-pill badge-success bg-danger");
                }



            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Signup signup = new Signup();
                SignupService signupService = new SignupService();
                signup.Email = Session["Email"].ToString();
                signup.FName = txtFName.Text.Trim();
                signup.UName = txtUName.Text.Trim();
                signup.LName = txtLName.Text.Trim();
                signup.Password = TextBox1.Text.Trim();
                signupService.UpdUserDetais(signup);
                LblMsg.Text = "Record Updated";
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void ExportCSV_Click(object sender, EventArgs e)
        {

        }
    }
}