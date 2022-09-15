using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Expense.Entities;


namespace Expense.DataLayer
{
    public class SignupRepositoy
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpManagementConnection"].ConnectionString);
        SqlCommand command = null;

        public void Signup(Signup signup)
        {
            try
            {
               
                command = new SqlCommand($"Insert into Signup values('{signup.FName}','{signup.LName}','{signup.UName}','{signup.Email}','{signup.Password}')",connection);
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

        public bool Login(Login login)
        {
            try
            {
                command = new SqlCommand($"Select * from Signup where Email='{login.Email}' and Password='{login.Password}'", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }

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


    }


}
