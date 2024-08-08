<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Action for Update Operation</title>
</head>
<body>
<%
    Connection con = null;
    Statement stmt = null;
    String name = request.getParameter("name");
    String newName = request.getParameter("newName");
    String contact = request.getParameter("contact");
    String address = request.getParameter("address");

    try {
        // Load JDBC Driver
        Class.forName("com.mysql.jdbc.Driver");
        // Establish connection
        con = DriverManager.getConnection("jdbc:mysql://localhost/charua", "root", "root");
        // Create statement
        stmt = con.createStatement();
        // Execute update
        int result = stmt.executeUpdate("UPDATE Address SET name='" + newName + "', contact='" + contact + "', address='" + address + "' WHERE name='" + name + "'");
        if (result > 0) {
        	response.sendRedirect("home.jsp");
        } else {
            out.print("<h3>Error updating contact.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("<h3>Error: " + e.getMessage() + "</h3>");
    } 
%>
</body>
</html>
