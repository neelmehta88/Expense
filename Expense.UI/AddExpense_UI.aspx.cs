using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Expense.BusinessLayer;
using Expense.Entities;

namespace Expense.UI
{
    public partial class AddExpense_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddExpense_Click(object sender, EventArgs e)
        {
            try
            {
                AddExpense addExpense = new AddExpense();
                //addExpense.ExpenseDate = DateTime.Parse(txtDate.Text);
                addExpense.Note = txtNote.Text;
                addExpense.Amount = int.Parse(txtAmount.Text); 
                addExpense.ExpenseCategory = txtExpCat.Text;

                AddExpenseService addExpenseService = new AddExpenseService();
                addExpenseService.AddExp(addExpense);
                LblMsg.Text = "Recoed Added";
                 
            }
            catch (Exception ex)
            {

                LblMsg.Text = ex.Message;
            }
        }
    }
}