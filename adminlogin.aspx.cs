using System;
using System.Configuration;
using System.Data.SqlClient;

namespace GarageSystem
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpassword.Text;

            string connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rchdm\\Desktop\\307project\\GarageSystem\\App_Data\\online.mdf;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string query = "SELECT * FROM Admin WHERE Username=@Username AND Password=@Password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["AdminUsername"] = username;
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                lblerror.Text = "Invalid username or password";
            }

            reader.Close();
            conn.Close();
        }
    }
}
