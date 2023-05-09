<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usermanagement.aspx.cs" Inherits="GarageSystem.usermanagement" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .btn.edit {
            background-color: #2196F3;
        }
        .btn.delete {
            background-color: #f44336;
        }
    </style>
</head>
<body>
    <h1>User Management</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId"
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="User ID" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <a href="AddUser.aspx" class="btn">Add User</a>
</body>
</html>
