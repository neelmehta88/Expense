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
    public partial class Reg_ModAddExp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                AddExpense addExpense = new AddExpense();
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpense.ExpenseDate = TxtDate.Text;
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                addExpenseService.UpdateExp(addExpense);
                GridView2.DataBind();
            }
            catch (Exception ex)
            {

                LblUpdExpMsg.Text = ex.Message;
            }
        }
    }
}