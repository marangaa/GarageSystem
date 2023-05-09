using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GarageSystem
{
    public partial class usermanagement : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        private void BindUsers()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT UserId, FirstName, LastName, Email, Mobile FROM Users";
                using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                {
                    DataTable users = new DataTable();
                    adapter.Fill(users);
                    UserList.DataSource = users;
                    UserList.DataKeyNames = new string[] { "UserId" };
                    UserList.DataBind();
                }
            }
        }

        protected void UserList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userId = Convert.ToInt32(UserList.DataKeys[e.RowIndex].Values[0]);
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Users WHERE UserId = @UserId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserId", userId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            BindUsers();
        }
    }
}
