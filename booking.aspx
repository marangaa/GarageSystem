<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="GarageSystem.booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>
    <link rel="stylesheet" type="text/css" href="booking.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Container to input all information of a booking -->
        <div
          class="container col-11 col-sm-8 col-md-6 col-lg-6"
          id="bookingcontainer">
          <div class="logoandtext">
            <a href="./index.html">
              <img
                id="logo"
                src="./images/logonobg2.png"
                alt="Ger's Garage Logo"
                width="60"
                height="60"
              />
              <h2 id="gergarage">Ger's Garage</h2>
            </a>
          </div>
          <img
            src="./images/carimage1.jpg"
            alt="Hand with glove fixing a car"
            width="100%"
            height="100%"
          />
          <h3 class="title">Book Your Repair or Maintance</h3>
          <h4 class="texttoleft">Car Details</h4>
          <div class="label-float">
            <input
              type="text"
              id="vehicleplate"
              placeholder="Vehicle Registration"
            />
            <div class="errormsg" id="errorvehicleplate"></div>
          </div>
          <div class="label-float">
            <select id="vehicletype">
              <option disabled selected>Vehicle Type</option>
            </select>
            <div class="errormsg" id="errorvehicletype"></div>
          </div>
          <div class="label-float">
            <select id="vehiclemake">
              <option disabled selected>Vehicle Make</option>
            </select>
            <div class="errormsg" id="errorvehiclemake"></div>
          </div>
          <div class="label-float">
            <input type="text" id="vehiclemodel" placeholder="Vehicle Model" />
            <div class="errormsg" id="errorvehiclemodel"></div>
          </div>
          <div class="label-float">
            <input type="number" id="vehicleyear" placeholder="Vehicle Year" />
            <div class="errormsg" id="errorvehicleyear"></div>
          </div>
          <div class="label-float">
            <select id="vehicleengine">
              <option disabled selected>Vehicle Engine</option>
              <option>Diesel</option>
              <option>Petrol</option>
              <option>Hybrid</option>
              <option>Electric</option>
            </select>
            <div class="errormsg" id="errorvehicleengine"></div>
          </div>
          <div id="lastdetailsdiv"></div>
          <h4 class="texttoleft">Booking Details</h4>

          <div class="label-float">
            <select id="bookingtype">
              <option disabled selected>Booking Type</option>
            </select>
            <div class="errormsg" id="errorbookingtype"></div>
          </div>

          <div class="label-float">
            <input
              id="date1"
              type="date"
              format="MM/DD/YYYY"
              placeholder="MM/DD/YYYY"
            />
            <div class="errormsg" id="errordate"></div>
          </div>

          <div class="label-float">
            <h4 class="texttoleft">Add comments (optional)</h4>
            <textarea id="comments" name="comments" rows="4" cols="50"></textarea>
          </div>
          <button onclick="book()">Book A Service</button>
          <h3 class="logouttext" onclick="logout()">Logout</h3>
        </div>
        <!-- Container that appears after service is booked -->
        <div
          class="container col-11 col-sm-8 col-md-6 col-lg-6 containerhidden"
          id="thankscontainer"
        >
          <div class="logoandtext">
            <a href="./index.html">
              <img
                id="logo"
                src="./images/logonobg2.png"
                alt="Ger's Garage Logo"
                width="60"
                height="60"
              />
              <h2 id="gergarage">Ger's Garage</h2>
            </a>
          </div>
          <h4 class="title">Thanks choosing us.</h4>
          <h4 class="title">
            <a href="./booking.html">Click here to book another service.</a>
          </h4>
          <button onclick="logout()"><a href="">Logout</a></button>
        </div>

        <script src="./scripts/bookingscript.js"></script>
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>
        <script></script>

    </form>
</body>
</html>
