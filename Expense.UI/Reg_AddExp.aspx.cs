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
    public partial class Reg_AddExp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddExp_Click(object sender, EventArgs e)
        {
            try
            {
                AddExpense addExpense = new AddExpense();
                //addExpense.ExpenseDate = DateTime.Parse(TxtDate.Text);
                addExpense.ExpenseDate = TxtDate.Text;
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpenseService.AddExp(addExpense);
                //Response.Write("<script>alert ('Record added')</script>");
                LblAddExpMsg.Text = "Recoed Added";
                //GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

                //Response.Write("<script>alert('" + ex.Message + "')</script>");
                LblAddExpMsg.Text = ex.Message;
            }

        }
    }
}