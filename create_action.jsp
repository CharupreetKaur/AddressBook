<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action for Create Operation</title>
</head>
<body>
<%
    Connection con = null;
    Statement stmt = null;
    String name = request.getParameter("name");
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
        int result = stmt.executeUpdate("insert into Address values ('" + name + "', '" + contact + "', '" + address + "')");
        if (result > 0) {
        	response.sendRedirect("read.jsp");
            out.print("<h3>Contact created successfully!</h3>");
        } else {
            out.print("<h3>Error creating contact.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("<h3>Error: " + e.getMessage() + "</h3>");
    }
%>
</body>
