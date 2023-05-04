using System;
using System.Data.SqlClient;

namespace GarageSystem
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the form was submitted
            if (IsPostBack)
            {
                // Retrieve the form data from the input controls
                string vehiclePlate = vehicleplate.Value;
                string vehicleType = vehicletype.Value;
                string vehicleMake = vehiclemake.Value;
                string vehicleModel = vehiclemodel.Value;
                string vehicleYear = vehicleyear.Value;
                string vehicleEngine = vehicleengine.Value;
                string bookingType = bookingtype.Value;
                string date = date1.Value;
                string comments = this.comments.Value;

                // Validate the form data (you can customize this part based on your requirements)
                if (string.IsNullOrEmpty(vehiclePlate) || string.IsNullOrEmpty(vehicleType) || string.IsNullOrEmpty(vehicleMake) || string.IsNullOrEmpty(vehicleModel) || string.IsNullOrEmpty(vehicleYear) || string.IsNullOrEmpty(vehicleEngine) || string.IsNullOrEmpty(bookingType) || string.IsNullOrEmpty(date))
                {
                    // Display an error message or perform appropriate error handling
                    Response.Write("Please fill in all required fields.");
                    return;
                }

                // Save the booking data to the database
                SaveBookingData(vehiclePlate, vehicleType, vehicleMake, vehicleModel, vehicleYear, vehicleEngine, bookingType, date, comments);

                // Redirect to a success page or display a success message
                Response.Redirect("booking-success.aspx");
            }
        }

        private void SaveBookingData(string vehiclePlate, string vehicleType, string vehicleMake, string vehicleModel, string vehicleYear, string vehicleEngine, string bookingType, string date, string comments)
        {
            // Connection string for your database
            string connectionString ="Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rchdm\\Desktop\\307project\\GarageSystem\\App_Data\\online.mdf;Integrated Security=True;";

            // SQL query to insert the booking data into the database table
            string query = "INSERT INTO Bookings (VehiclePlate, VehicleType, VehicleMake, VehicleModel, VehicleYear, VehicleEngine, BookingType, Date, Comments) " +
                           "VALUES (@VehiclePlate, @VehicleType, @VehicleMake, @VehicleModel, @VehicleYear, @VehicleEngine, @BookingType, @Date, @Comments)";

            // Create a new SqlConnection and SqlCommand
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SqlCommand
                    command.Parameters.AddWithValue("@VehiclePlate", vehiclePlate);
                    command.Parameters.AddWithValue("@VehicleType", vehicleType);
                    command.Parameters.AddWithValue("@VehicleMake", vehicleMake);
                    command.Parameters.AddWithValue("@VehicleModel", vehicleModel);
                    command.Parameters.AddWithValue("@VehicleYear", vehicleYear);
                    command.Parameters.AddWithValue("@VehicleEngine", vehicleEngine);
                    command.Parameters.AddWithValue("@BookingType", bookingType);
                    command.Parameters.AddWithValue("@Date", date);
                    command.Parameters.AddWithValue("@Comments", comments);

                    // Open the database connection
                    connection.Open();

                    // Execute the SQL command
                    command.ExecuteNonQuery();

                    // Close the database connection
                    connection.Close();
                }
            }
        }
    }
}
