<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Action for Delete Operation</title>
</head>
<body>
<%
    Connection con = null;
    Statement stmt = null;
    String name = request.getParameter("name");

    try {
        // Load JDBC Driver
        Class.forName("com.mysql.jdbc.Driver");
        // Establish connection
        con = DriverManager.getConnection("jdbc:mysql://localhost/charua", "root", "root");
        // Create statement
        stmt = con.createStatement();
        // Execute delete
        int result = stmt.executeUpdate("DELETE FROM Address WHERE name='" + name + "'");
        int nullResult = stmt.executeUpdate("DELETE FROM Address WHERE name IS NULL OR contact IS NULL OR address IS NULL");
        if (result > 0 || nullResult > 0) {
            response.sendRedirect("read.jsp");
        } else {
            out.print("<h3>Error deleting contact. Make sure the name is correct.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("<h3>Error: " + e.getMessage() + "</h3>");
    } 
%>
</body>
</html>
