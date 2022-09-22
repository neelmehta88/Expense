using Expense.BusinessLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Expense.UI
{
    public partial class Reg_AddExp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Session["Email"] == null)
            {
                Response.Redirect("Homepage2.aspx");
            }

            /*if (IsPostBack == false)
            {
                //SqlDataSource2.ToString();
                GridView1.DataBind();
            }*/
        }

        protected void BtnAddExp_Click(object sender, EventArgs e)
        {
            try
            {

                AddExpense addExpense = new AddExpense();

                AddExpenseService addExpenseService = new AddExpenseService();
                addExpense.AddExpenseId = int.Parse(TxtAddExpID.Text);
                addExpense.ExpenseDate = TxtDate.Text;
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                //Response.Write("<script>alert ('Record added')</script>");

                /* LinkButton linkButton = Master.FindControl("LinkButton7") as LinkButton;
                 addExpense.Email = linkButton.Text;*/
                addExpense.Email = Session["Email"].ToString();


                addExpenseService.AddExp(addExpense);
                LblAddExpMsg.Text = "Recoed Added";
                GridView1.DataBind();

                TxtAddExpID.Text = String.Empty;
                TxtAmount.Text = String.Empty;
                LblAddExpMsg.Text = String.Empty;
                TxtDate.Text = String.Empty;
                TxtNote.Text = String.Empty;
                DDLExpCat.Text = String.Empty;

            }
            catch (Exception ex)
            {

                //Response.Write("<script>alert('" + ex.Message + "')</script>");
                LblAddExpMsg.Text = ex.Message;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            AddExpense addExpense = new AddExpense();
            AddExpenseService addExpenseService = new AddExpenseService();

            addExpense.AddExpenseId = int.Parse(TextBox1.Text);
            addExpense.Email = Session["Email"].ToString();
            DataTable dt = new DataTable();
            dt = addExpenseService.CheckExpIDExits(addExpense);

            if (dt.Rows.Count <= 0)
            {
                LblAddExpMsg.Text = "Invalid Exp ID";
            }
            else
            {
                dt = addExpenseService.GetExpById(addExpense);
                if (dt.Rows.Count > 0)
                {
                    TxtAddExpID.Text = dt.Rows[0]["AddExpenseId"].ToString();
                    TxtAmount.Text = dt.Rows[0]["Amount"].ToString();
                    TxtNote.Text = dt.Rows[0]["Note"].ToString();
                    TxtDate.Text = dt.Rows[0]["ExpenseDate"].ToString();
                    DDLExpCat.Text = dt.Rows[0]["ExpenseCategory"].ToString();
                    TextBox1.Text = String.Empty;
                }


            }






        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            /* try
             {
                 AddExpense addExpense = new AddExpense()
                 {
                     ExpenseDate = TxtDate.Text,
                     Note = TxtNote.Text.Trim(),
                     Amount = int.Parse(TxtAmount.Text),
                     ExpenseCategory = DDLExpCat.Text.Trim(),
                 };
                 AddExpenseService addExpenseService = new AddExpenseService();
                 DataTable dt = new DataTable();
                 dt = addExpenseService.UpdateExp(addExpense);
                 GridView1.DataBind();


             }
             catch (Exception)
             {

                 throw;
             }*/

            try
            {
                AddExpense addExpense = new AddExpense();
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpense.AddExpenseId = int.Parse(TxtAddExpID.Text);
                addExpense.ExpenseDate = TxtDate.Text;
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                addExpense.Email = Session["Email"].ToString();
                addExpenseService.UpdateExp(addExpense);
                LblAddExpMsg.Text = "Record updated";
                GridView1.DataBind();

                TxtAddExpID.Text = String.Empty;
                TxtAmount.Text = String.Empty;
                LblAddExpMsg.Text = String.Empty;
                TxtDate.Text = String.Empty;
                TxtNote.Text = String.Empty;
                DDLExpCat.Text = String.Empty;




            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                AddExpense addExpense = new AddExpense();
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpense.AddExpenseId = int.Parse(TxtAddExpID.Text);
                addExpense.Email = Session["Email"].ToString();
                addExpenseService.DeleteExp(addExpense);
                GridView1.DataBind();

                TxtAddExpID.Text = String.Empty;
                TxtAmount.Text = String.Empty;
                LblAddExpMsg.Text = String.Empty;
                TxtDate.Text = String.Empty;
                TxtNote.Text = String.Empty;
                DDLExpCat.Text = String.Empty;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void TxtDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DDLExpCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ExpenseCategorycs expenseCategorycs = new ExpenseCategorycs();
            //AddExpenseService addExpenseService = new AddExpenseService();
            //expenseCategorycs.ExpenseCategory = SqlDataSource2.ToString();

        }

        protected void ExportCSV_Click(object sender, EventArgs e)
        {
            AddExpense addExpense = new AddExpense();
            AddExpenseService addExpenseService = new AddExpenseService();
            DataSet ds = new DataSet();
            ds = addExpenseService.ExportCSV(addExpense);
            //GridView1.DataSource = ds;
            GridView1.DataBind();
            ExportGridToCSV();
        }

        private void ExportGridToCSV()
        {
            
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=Export.csv");
            Response.Charset = "";
            Response.ContentType = "application/text";
            GridView1.AllowPaging = false;
            GridView1.DataBind();
            StringBuilder columnbind = new StringBuilder();
            for (int k = 0; k < GridView1.Columns.Count; k++)
            {
                columnbind.Append(GridView1.Columns[k].HeaderText + ',');
            }
            columnbind.Append("\r\n");
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                for (int k = 0; k < GridView1.Columns.Count; k++)
                {
                    columnbind.Append(GridView1.Rows[i].Cells[k].Text + ',');
                }
                columnbind.Append("\r\n");
            }
            Response.Output.Write(columnbind.ToString());
            Response.Flush();
            Response.End();
        }

       
    }

        
}