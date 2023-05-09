using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

            // Define the connection string
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rchdm\\Desktop\\307project\\GarageSystem\\App_Data\\online.mdf;Integrated Security=True;";

            // SQL query to check login details
            string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Set the parameter values
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", Password);

                    // Open the connection
                    connection.Open();

                    // Execute the query
                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        // Redirect user to a dashboard
                        Response.Redirect("~/booking.aspx");
                    }
                    else
                    {
                        ErrorMessage.Text = "invalid username or pasword";
                    }

                }
            }
        }
    }
}