using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GarageSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LgnBtn_Click(object sender, EventArgs e)
        {
            string username = uname.Text;
            string Password = password.Text;
            //declare data table
            DataTable dt = new DataTable();
            //create an instance of dataset
            onlineTableAdapters.UsersTableAdapter logs = new onlineTableAdapters.UsersTableAdapter();
            //assign to data table results of adapter
            dt = logs.GetData(username, Password);

            if (dt.Rows.Count > 0)
            {
                //redirect user to a dashboard
                Response.Redirect("~/index.html");
            }
            else if (username == "admin" && Password == "admin1234")
            {
                //redirect admin to admin page
                Response.Redirect("~/index.html");
            }
            else
            {
                //display error message
                //ErrorMessage.Text = "Invalid username or password.";
            }

        }
    }
}