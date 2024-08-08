<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Contact - Address Book</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .header {
        position: sticky;
        top: 0;
        z-index: 1000;
    }
    .container {
        display: flex;
        height: calc(100vh - 80px);
    }
    .links {
        width: 200px;
        background-color: #f9f9f9;
        padding: 10px;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        overflow-y: auto;
    }
    .links a {
        display: block;
        padding: 10px;
        margin: 5px 0;
        text-decoration: none;
        color: #333;
        border-radius: 4px;
        transition: background-color 0.3s;
    }
    .links a:hover {
        background-color: #C71585; 
        color: white;
    }
    .content {
        flex: 1;
        padding: 20px;
        background-color: #f0f0f0;
        border-left: 5px solid #C71585; 
    }
    form {
        max-width: 500px;
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    form div {
        margin-bottom: 15px;
    }
    form label {
        display: block;
        margin-bottom: 5px;
    }
    form input[type="text"] {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
    }
    form input[type="submit"] {
        background-color: #C71585; 
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    form input[type="submit"]:hover {
        background-color: #C71585; 
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ccc;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    .header-magenta {
        color: #C71585;
    }
</style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <jsp:include page="link.jsp" />
        <div class="content">
            <h2 class="header-magenta">Delete Contact</h2>
            <form action="delete_action.jsp">
                <div>
                    <label for="name">Name of Contact to Delete:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div>
                    <input type="submit" value="Delete">
                </div>
            </form>
            <h2 class="header-magenta">Current Contacts</h2>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Address</th>
                </tr>
                <%
                    Connection con = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/charua", "root", "root");
                        stmt = con.createStatement();                   
                        rs = stmt.executeQuery("SELECT name, contact, address FROM Address");
                        while (rs.next()) {
                            String name = rs.getString("name");
                            String contact = rs.getString("contact");
                            String address = rs.getString("address");
                %>
                <tr>
                    <td><%= name %></td>
                    <td><%= contact %></td>
                    <td><%= address %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.print("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
                    } 
                %>
            </table>
        </div>
    </div>
</body>
</html>
