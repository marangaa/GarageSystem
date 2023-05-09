<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="GarageSystem.adminlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="logins.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="registrationcontainer">
          <div class="logoandtext">
            <a href="./index.html">
              <img
                src="./images/logonobg2.png"
                alt="Ger's Garage Logo"
                width="60"
                height="60"
              />
              <h2>Ger's Garage</h2>
            </a>
          </div>
          <h3 class="title">Admin Login</h3>
          <div class="label-float">
            <asp:TextBox ID="txtusername" runat="server" placeholder="Username"></asp:TextBox>
          </div>

          <div class="label-float">
            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password"></asp:TextBox>
            <div class="errormsg" id="errorlogin"></div>
          </div>
          <div class="justify-center">
            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
          </div>
        </div>
    </form>
</body>
</html>
