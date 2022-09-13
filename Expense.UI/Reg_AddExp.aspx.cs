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
                addExpense.ExpenseDate = DateTime.Parse(TxtDate.Text);
                addExpense.Note = TxtNote.Text.Trim();
                addExpense.Amount = int.Parse(TxtAmount.Text);
                addExpense.ExpenseCategory = DDLExpCat.Text.Trim();
                AddExpenseService addExpenseService = new AddExpenseService();
                addExpenseService.AddExp(addExpense);
                LblAddExpMsg.Text = "Recoed Added";

            }
            catch (Exception ex)
            {

                LblAddExpMsg.Text =ex.Message;
            }

        }
    }
}