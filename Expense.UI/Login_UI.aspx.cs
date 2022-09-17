using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Expense.UI
{
    public partial class Login_UI:System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                /*Expense.Entities.Login login = new Expense.Entities.Login();
                login.Email = txtEmail.Text;
                login.Password = txtPassword.Text;
*/

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}