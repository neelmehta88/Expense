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

        /*public void AdminLogin(AdminMaster adminMaster)
        {
            try
            {
                
                command = new SqlCommand($"Select * from AdminMaster where UserName='{adminMaster.UserName}' and Password='{adminMaster.Password}'", connection);
                connection.Open();
                command.ExecuteNonQuery();
              

                //command.ExecuteNonQuery();

                //adapter.Fill(dt);
                //return dt;



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
        }

        public DataTable CheckMemberIdExits(Signup signup)
        {
            try
            {
                adapter =new SqlDataAdapter($"select * from Signup where memberID={signup.memberID}", connection);
                adapter.Fill(dt);
                return dt;

            }
            catch (Exception)
            {

                throw;
            }
        }

        public void DeleteMem(Signup signup)
        {
            try
            {
                command = new SqlCommand($"Delete from Signup where memberID={signup.memberID}", connection);
                connection.Open();
                command.ExecuteNonQuery();
                
                
            }
            catch (Exception)
            {

                throw;
            }
        }

        //public DataTable updateAccStat(Signup signup)
        //{
        //    try
        //    {
        //        adapter = new SqlDataAdapter($"update Signup set AccountStatus ='{signup.AccountStatus} where memberID={signup.memberID}", connection);
        //        //command = new SqlCommand($"update Signup set AccountStatus='{signup.AccountStatus} where memberID={signup.memberID}", connection);
        //        DataTable dt = new DataTable();
        //        adapter.Fill(dt);
        //        return dt;
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}

        public void UpdMemStat(string AccountStatus, int memberID)
        {
            try
            {
                command = new SqlCommand($"Update Signup SET AccountStatus='{AccountStatus}' where memberID={memberID}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
        }

       
    }
}
