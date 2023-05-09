<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookingmanagement.aspx.cs" Inherits="GarageSystem.bookingmanagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Booking Management</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="BookingID" HeaderText="Booking ID" ReadOnly="True" SortExpression="BookingID" />
                    <asp:BoundField DataField="VehiclePlate" HeaderText="Vehicle Plate" SortExpression="VehiclePlate" />
                    <asp:BoundField DataField="VehicleMake" HeaderText="Vehicle Make" SortExpression="VehicleMake" />
                    <asp:BoundField DataField="VehicleModel" HeaderText="Vehicle Model" SortExpression="VehicleModel" />
                    <asp:BoundField DataField="BookingType" HeaderText="Booking Type" SortExpression="BookingType" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookingID, VehiclePlate, VehicleMake, VehicleModel, BookingType, Date, Comments FROM Bookings"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
