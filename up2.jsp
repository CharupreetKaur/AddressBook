<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Contact - Address Book</title>
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
            background-color: #D5006D;
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
            <h2 class="header-magenta">Update Contact</h2>
            <%
                String name = request.getParameter("name");
                String contact = "";
                String address = "";
                
                Connection con = null;
                Statement stmt = null;

                try {
                    // Load JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    // Establish connection
                    con = DriverManager.getConnection("jdbc:mysql://localhost/charua", "root", "root");
                    // Create SQL query
                    stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT contact, address FROM Address WHERE name='" + name + "'");
                    
                    if (rs.next()) {
                        contact = rs.getString("contact");
                        address = rs.getString("address");
                        out.print("<form action=\"up3.jsp\">");
                        out.print("<div>");
                        out.print("<label for=\"name\">Name:</label>");
                        out.print("<input type=\"text\" id=\"name\" name=\"name\" value=\"" + name + "\" readonly>");
                        out.print("</div>");
                        out.print("<div>");
                        out.print("<label for=\"contact\">Contact:</label>");
                        out.print("<input type=\"text\" id=\"contact\" name=\"contact\" value=\"" + contact + "\" required>");
                        out.print("</div>");
                        out.print("<div>");
                        out.print("<label for=\"address\">Address:</label>");
                        out.print("<input type=\"text\" id=\"address\" name=\"address\" value=\"" + address + "\" required>");
                        out.print("</div>");
                        out.print("<div>");
                        out.print("<input type=\"submit\" value=\"Submit\">");
                        out.print("</div>");
                        out.print("</form>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                } 
            %>
        </div>
    </div>
</body>
</html>
