using Expense.DataLayer;
using Expense.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expense.BusinessLayer
{
    public class AdminLoginService
    {
        AdminLoginRepository repository;

        public AdminLoginService()
        {
            repository = new AdminLoginRepository();
        }

        public void AdminLogin(AdminMaster adminMaster)
        {
            try
            {
                 repository.AdminLogin(adminMaster);
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
                return repository.CheckMemberIdExits(signup);
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
                repository.DeleteMem(signup);
            }
            catch (Exception)
            {

                throw;
            }
        }

        



        public void UpdMemStat(string AccountStatus, int memberID)
        {
            try
            {
                repository.UpdMemStat(AccountStatus, memberID);
            }
            catch (Exception)
            {

                throw;
            }
        }



    }
}
