using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expense.Entities
{
    public class AddExpense
    {
        public int AddExpenseId { get; set; } 
        public string ExpenseDate { get; set; }
        public string Note { get; set; }
        public int Amount { get; set; }
        public string ExpenseCategory { get; set; }

    }
}
