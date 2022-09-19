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

        public DataTable AdminLogin(AdminMaster adminMaster)
        {
            try
            {
                return repository.AdminLogin(adminMaster);
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

        public DataTable DeleteMem(Signup signup)
        {
            try
            {
                return repository.DeleteMem(signup);
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
        //        return repository.updateAccStat(signup);
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}

    }
}
