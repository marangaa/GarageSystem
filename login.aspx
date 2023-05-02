<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GarageSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
          <h3 class="title">Login</h3>
          <div class="label-float">
            <asp:TextBox ID="uname" runat="server" placeholder="Username"></asp:TextBox>
          </div>

          <div class="label-float">
            <asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox>
            <div class="errormsg" id="errorlogin"></div>
          </div>
          <div class="justify-center">
            <asp:Button ID="LgnBtn" runat="server" Text="Continue" OnClick="LgnBtn_Click" />
            <h4>Don't have an account? <a href="./signup.aspx">Sign up</a>.</h4>
            
          </div>
    </div>
    <script src="./scripts/login.js"></script>
    </form>
</body>
</html>
