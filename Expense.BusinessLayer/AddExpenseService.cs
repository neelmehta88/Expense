using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Expense.Entities;
using Expense.DataLayer;

namespace Expense.BusinessLayer
{
    public class AddExpenseService
    {
        AddExpenseRepository repository;
        public AddExpenseService()
        {
            repository = new AddExpenseRepository();

        }



        public void AddExp(AddExpense addExpense)
        {
            try
            {
                repository.AddExp(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void DeleteExp(int addExpenseID)
        {
            try
            {
                repository.DeleteExp(addExpenseID);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void UpdateExp(AddExpense addExpense)
        {
            try
            {
                repository.UpdateExp(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public AddExpense GetExpenseByID(int addExpenseID)
        {
            try
            {
                return repository.GetExpenseByID(addExpenseID);
            }
            catch (Exception)
            {

                throw;
            }

        }

        public List<AddExpense> GetAllExpenses()
        {
            try
            {
                return repository.GetAllExpenses();
            }
            catch (Exception)
            {

                throw;
            }
        }

    }

}
