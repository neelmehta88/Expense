using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Expense.Entities;
using Expense.DataLayer;
using System.Data;

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

        /*public void AddExpEmail(AddExpense addExpense)
        {
            try
            {
                repository.AddExpEmail(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }*/

        /* public void DeleteExp(int addExpenseID)
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
         }*/

        /*public AddExpense GetExpenseByID(int addExpenseID)
        {
            try
            {
                return repository.GetExpenseByID(addExpenseID);
            }
            catch (Exception)
            {

                throw;
            }

        }*/

        /*public List<AddExpense> GetAllExpenses()
        {
            try
            {
                return repository.GetAllExpenses();
            }
            catch (Exception)
            {

                throw;
            }
        }*/

        /* public string GetExpByCat(string ExpenseCategory)
         {
             try
             {
                 return repository.GetExpenseByID(ExpenseCategory);
             }
             catch (Exception)
             {

                 throw;
             }
         }*/

        public DataTable GetExpById(AddExpense addExpense)
        {
            try
            {
                return repository.GetExpById(addExpense);
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

        public void DeleteExp(AddExpense addExpense)
        {
            try
            {
                 repository.DeleteExp(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataTable CheckExpIDExits(AddExpense addExpense)
        {
            try
            {
                return repository.CheckExpIDExits(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void AddEmailToAddExp(AddExpense addExpense)
        {
            try
            {
                repository.AddEmailToAddExp(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void SelectExpCat(ExpenseCategorycs expenseCategorycs)
        {
            try
            {
                repository.SelectExpCat(expenseCategorycs);
            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataSet ExportCSV(AddExpense addExpense)
        {
            try
            {
                return repository.ExportCSV(addExpense);
            }
            catch (Exception)
            {

                throw;
            }
        }

    }

}
