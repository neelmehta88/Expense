using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Expense.DataLayer;
using Expense.Entities;

namespace Expense.BusinessLayer
{
    public class SignupService
    {
        SignupRepositoy repositoy;

        public SignupService()
        {
            repositoy = new SignupRepositoy();
        }

        public void Signup(Signup signup)
        {
            try
            {
                repositoy.Signup(signup);
            }
            catch (Exception)
            {

                throw;
            }

        }

        //public void Login(Login login)
        //{
        //    try
        //    {
        //        repositoy.Login(login);
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}
    }
}
