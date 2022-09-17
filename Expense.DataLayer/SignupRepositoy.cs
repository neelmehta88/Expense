using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient; 
using Expense.Entities;
using System.Configuration;
using System.Runtime.Remoting.Messaging;

namespace Expense.DataLayer
{
    public class SignupRepositoy
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpManagementConnection"].ConnectionString);
        SqlCommand command = null;
        SqlDataAdapter adapter = null;
        DataTable dt = new DataTable();
        SqlDataReader reader = null;
        
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

       /* public bool Signup(Login login)
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
        }*/

        public DataTable Login(Signup signup)
        {
            try
            {
                adapter = new SqlDataAdapter($"Select * from Signup where Email='{signup.Email}' and  Password='{signup.Password}'", connection);
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataTable CheckUserExits(Signup signup)
        {
            try
            {
                adapter = new SqlDataAdapter($"select * from Signup where Email='{signup.Email}'", connection);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }

        }





    }


}
