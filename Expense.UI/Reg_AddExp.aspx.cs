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
    public partial class Reg_AddExp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(IsPostBack == false)
            {
                GridView1.DataBind();
            }
        }

        protected void BtnAddExp_Click(object sender, EventArgs e)
        {
            try
            {
                AddExpense addExpense = new AddExpense();
                //addExpense.ExpenseDate = DateTime.Parse(TxtDate.Text);
                
                
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpense.AddExpenseId = int.Parse(TxtAddExpID.Text);
                addExpense.ExpenseDate = TxtDate.Text;
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                //Response.Write("<script>alert ('Record added')</script>");
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
                addExpenseService.UpdateExp(addExpense);
                LblAddExpMsg.Text = "Recoed updated";
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
                addExpenseService.DeleteExp(addExpense.AddExpenseId);
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
    }
}