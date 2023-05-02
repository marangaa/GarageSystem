using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GarageSystem
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call database connection method
            database.DbCon();

        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            //Declare Variables

            string userid = uname.Text;
            string emailed = email.Text;
            string firstname = fname.Text;
            string lastname = lname.Text;
            int mobile = Convert.ToInt32(phone.Text);
            string passwd = password.Text;

            //declare sql statement

            String sqlText;
            sqlText = "INSERT INTO Users values('" + userid + "','" + firstname + "','" + lastname + "','"  + emailed + "','"  + mobile + "','" + passwd + "')";


            //create an instance of SqlCommand

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlText;
            //Associate command object with connection object
            cmd.Connection = database.con;
            //execute querry
            cmd.ExecuteNonQuery();
            //Close database connection 
            database.con.Close();
           
        }
    }
}