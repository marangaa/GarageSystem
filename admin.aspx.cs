using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Get the connection string from the web.config file
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        //Create a new SqlConnection object using the connection string
        SqlConnection con = new SqlConnection(connectionString);

        //Create a SQL command to retrieve the admin credentials from the database
        SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE Username=@username AND Password=@password", con);

        //Set the username and password parameters
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", Password.Text);

        //Open the connection
        con.Open();

        //Execute the SQL command
        SqlDataReader reader = cmd.ExecuteReader();

        //Check if the query returned any rows
        if (reader.HasRows)
        {
            //Login successful, redirect to the admin dashboard page
            Response.Redirect("admindashboard.aspx");
        }
        else
        {
            //Login failed, show an error message
            lblError.Text = "Invalid username or password";
        }

        //Close the connection and release resources
        reader.Close();
        con.Close();
    }
}
