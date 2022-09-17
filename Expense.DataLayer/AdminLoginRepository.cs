using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expense.DataLayer
{
    public class AdminLoginRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpManagementConnection"].ConnectionString);
        SqlCommand command = null;
        SqlDataAdapter adapter = null;
        DataTable dt = new DataTable();
        SqlDataReader reader = null;

        public DataTable AdminLogin(AdminMaster adminMaster)
        {
            try
            {
                adapter = new SqlDataAdapter($"Select * from AdminMaster where UserName='{adminMaster.UserName}' and Password='{adminMaster.Password}'", connection);
                adapter.Fill(dt);
                return dt;



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
