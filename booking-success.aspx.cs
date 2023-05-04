using System;
using System.Web.UI;

namespace GarageSystem
{
    public partial class BookingSuccess : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the vehicle plate parameter exists in the query string
                if (!string.IsNullOrEmpty(Request.QueryString["vehicleplate"]))
                {
                    string vehiclePlate = Request.QueryString["vehicleplate"];
                    lblVehiclePlate.Text = vehiclePlate;
                }
            }
        }
    }
}