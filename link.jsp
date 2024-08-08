<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Address Book</title>
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
            background-color: #FF69B4; 
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="links">
            <a href="home.jsp">HOME</a>
            <a href="create.jsp">CREATE</a>
            <a href="read.jsp">READ</a>
            <a href="update.jsp">UPDATE</a>
            <a href="delete.jsp">DELETE</a>
            <a href="up1.jsp">NEW FORM</a>
            <a href="up2.jsp">NEW PREFILLED FORM</a>
        </div>
    </div>
</body>
</html>
