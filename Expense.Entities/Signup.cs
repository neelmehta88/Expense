using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expense.Entities
{
    public class Signup
    {
        public string FName { get; set; }
        public string LName { get; set; }
        public string UName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

    }

    public class Login
    {
        public string Email { get;  set; }
        public string Password { get; set; }
    }
}
