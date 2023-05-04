using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GarageSystem
{
    public class database
    {
        public static SqlConnection con;

        public static void DbCon()
        {
            string conString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rchdm\\Desktop\\307project\\GarageSystem\\App_Data\\online.mdf;Integrated Security=True";

            con = new SqlConnection(conString);

            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            else { con.Open(); }
        }

    }
}
