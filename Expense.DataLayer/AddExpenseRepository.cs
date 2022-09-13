﻿using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expense.DataLayer
{
    public class AddExpenseRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpManagementConnection"].ConnectionString);
        SqlCommand command = null;

        public void AddExp(AddExpense addExpense)
        {
            try
            {
                command = new SqlCommand($"Insert into AddExpense (ExpenseDate,Note,Amount,ExpenseCategory) values('{addExpense.ExpenseDate}','{addExpense.Note}',{addExpense.Amount},'{addExpense.ExpenseCategory}')",connection);
                connection.Open();
                command.ExecuteNonQuery();

               
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }

        public void DeleteExp(int addExpenseID)
        {
            try
            {
                command = new SqlCommand($"Delete from AddExpense where AddExpenseId={addExpenseID}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void UpdateExp(AddExpense addExpense)
        {
            try
            {
                command = new SqlCommand($"Update AddExpense set ExpenseDate='{addExpense.ExpenseDate}', Note='{addExpense.Note}', Amount={addExpense.Amount}, ExpenseCategory ='{addExpense.ExpenseCategory}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }

        }

        
        public AddExpense GetExpenseByID(int addExpenseID)
        {
            try
            {
                AddExpense addExpense = null;
                command = new SqlCommand($"select * from AddExpense where AddExpenseID ={addExpenseID}",connection);
                connection.Open();  
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                   addExpense = new AddExpense()
                    {
                        AddExpenseId = (int)reader["AddExpenseID"],
                        ExpenseDate = (DateTime)reader["ExpenseDate"],
                        Note = reader["Note"].ToString(),
                        Amount = (int)reader["Amount"],
                        ExpenseCategory = reader["ExpenseCategory"].ToString()
                    };
                    
                }
                return addExpense;

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
                List<AddExpense> list = new List<AddExpense>();
                command = new SqlCommand($"Select * from AddExpense",connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    AddExpense addExpense = new AddExpense();
                    addExpense.AddExpenseId = (int)reader["AddExpenseID"];
                    addExpense.ExpenseDate = (DateTime)reader["ExpenseDate"];
                    addExpense.Note = reader["Note"].ToString();
                    addExpense.Amount = (int)reader["Amount"];
                    addExpense.ExpenseCategory = reader["ExpenseCategory"].ToString();

                }
                return list;
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}