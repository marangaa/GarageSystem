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
          id="bookingcontainer" runat="server">
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
            <input type="text" id="vehicleplate" placeholder="Vehicle Registration" runat="server" />
            <div class="errormsg" id="errorvehicleplate"></div>
          </div>
          <div class="label-float">
            <select id="vehicletype" runat="server">
                  <option disabled selected>Vehicle Type</option>
                  <option value="sedan">Sedan</option>
                  <option value="suv">SUV</option>
                  <option value="hatchback">Hatchback</option>
                  <option value="coupe">Coupe</option>
                  <option value="convertible">Convertible</option>
                  <option value="minivan">Minivan</option>
                  <option value="pickup">Pickup Truck</option>
            </select>
            <div class="errormsg" id="errorvehicletype"></div>
          </div>
          <div class="label-float">
              <select id="vehiclemake" runat="server">
                  <option disabled selected>Vehicle Make</option>
                  <option value="toyota">Toyota</option>
                  <option value="honda">Honda</option>
                  <option value="ford">Ford</option>
                  <option value="chevrolet">Chevrolet</option>
                  <option value="nissan">Nissan</option>
                  <option value="bmw">BMW</option>
                  <option value="mercedes">Mercedes-Benz</option>
                  </select>
            <div class="errormsg" id="errorvehiclemake"></div>
          </div>
          <div class="label-float">
              <select id="vehiclemodel" runat="server">
                  <option disabled selected>Vehicle Model</option>
                  <option>Audi A4</option>
                  <option>BMW 3 Series</option>
                  <option>Mercedes-Benz C-Class</option>
                  <option>Toyota Camry</option>
                  <option>Honda Civic</option>
                  <option>Ford Mustang</option>
                  <option>Chevrolet Silverado</option>
                  <option>Jeep Wrangler</option>
                  <option>Subaru Outback</option>
            </select>
            <div class="errormsg" id="errorvehiclemodel"></div>
          </div>
          <div class="label-float">
            <select id="vehicleyear" runat="server">
                <option disabled selected>Vehicle Year</option>
                <option value="2023">2023</option>
                <option value="2022">2022</option>
                <option value="2021">2021</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
            </select>
            <div class="errormsg" id="errorvehicleyear"></div>
          </div>
          <div class="label-float">
            <select id="vehicleengine" runat="server">
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
            <select id="bookingtype" runat="server">
                <option disabled selected>Booking Type</option>
                <option value="regular">Regular Service</option>
                <option value="oilchange">Oil Change</option>
                <option value="brakerepair">Brake Repair</option>
                <option value="tirerotation">Tire Rotation</option>
                <option value="batteryreplacement">Battery Replacement</option>
                <option value="enginetuneup">Engine Tune-up</option>
                <option value="transmissionservice">Transmission Service</option>
            </select>
            <div class="errormsg" id="errorbookingtype"></div>
          </div>

          <div class="label-float">
            <input type="date" id="date1" format="MM/DD/YYYY" placeholder="MM/DD/YYYY" runat="server" />
            <div class="errormsg" id="errordate"></div>
          </div>

          <div class="label-float">
            <h4 class="texttoleft">Add comments (optional)</h4>
            <textarea id="comments" runat="server" name="comments" rows="4" cols="50"></textarea>
          </div>
          <button onclick="book()">Book A Service</button>
          <h3 class="logouttext" onclick="logout()">Logout</h3>
        </div>
        <!-- Container that appears after service is booked -->
        <div
          class="container col-11 col-sm-8 col-md-6 col-lg-6 containerhidden"
          id="thankscontainer" runat="server">
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
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>
        <script></script>

    </form>
</body>
</html>
