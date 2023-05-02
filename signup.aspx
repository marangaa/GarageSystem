<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="GarageSystem.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="logins.css" /> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="registrationcontainer">
                <div class="logoandtext"><a href="./index.html">
                <img src="./images/logonobg2.png" alt="Ger's Garage Logo" width="60" height="60">
                <h2>Ger's Garage</h2>
            </a></div>
                <h3 class="title">Sign Up</h3>

                 <div class='label-float'>
                    <asp:TextBox ID="uname" runat="server" placeholder="Username"></asp:TextBox>
                    
                  </div>
    
                <div class='label-float'>
                  <asp:TextBox ID="fname" runat="server" placeholder="First Name"></asp:TextBox>
                  <div class="errormsg" id="errorlogin">
                    </div>
                </div>
    
                <div class='label-float'>
                    <asp:TextBox ID="lname" runat="server" placeholder="Last Name"></asp:TextBox>
                    <div class="errormsg" id="errorpassword"></div>
                  </div>

                  <div class='label-float'>
                    <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                    <div class="errormsg" id="errorpasswordrep"></div>
                  </div>

                <div class='label-float'>
                    <asp:TextBox ID="phone" runat="server" placeholder="Phone Number"></asp:TextBox>
                    <div class="errormsg" id="errorfirstname"></div>
                </div>

                <div class='label-float'>
                    <asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox>
                    <div class="errormsg" id="errorlastname"></div>
                </div>
    
                  <div class="justify-center">
                      <asp:Button ID="SignUpBtn" runat="server" Text="Register" OnClick="SignUpBtn_Click" />
                      <div class="errormsg" id="errordupemail"></div>
                      <h4>Already have an account? <a href="./login.aspx">Login</a></h4>
                  </div>
            </div>
            <!-- Container that appears after registration is completed -->
            <div class="container containerhidden" id="confirmationcontainer">
                <div class="logoandtext">
                    <a href="./index.html">
                    <img src="./images/logonobg2.png" alt="Ger's Garage Logo" width="60" height="60">
                    <h2>Ger's Garage</h2>
                    </a>
                </div>
                <h4>Registration completed.</h4>
                <h4><a href="./login.aspx">Click here to login</a>.</h4>
            </div>
    </form>
</body>
</html>
