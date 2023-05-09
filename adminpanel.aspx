<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="GarageSystem.adminpanel" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Panel - Ger's Garage</title>
    <link rel="stylesheet" href="home.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous" />
</head>
<body>
    <!-- Navigation Menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Ger's Garage</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
           
                    <li class="nav-item">
                        <a class="nav-link" href="usermanagement.aspx">User Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="servicemanagement.aspx">Service Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="bookingmanagement.aspx">Booking Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Payment Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Analytics and Reporting</a>
                    </li>
                    
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- Content goes here -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-CrXfo9s/BOEw8tAWR/sGKToMY/fWex50Yl/v9U0LfWihkaIkOw29cbxnZPzZ3sK3"
            crossorigin="anonymous"></script>
</body>
</html>

