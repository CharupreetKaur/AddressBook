<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Contact - Address Book</title>
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
        background-color: #4CAF50;
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
        background-color: pink;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    form input[type="submit"]:hover {
        background-color: #C71585;
    }
    h2 {
        color: #C71585; 
    }
</style>
    
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <jsp:include page="link.jsp" />
        <div class="content">
            <h2>Create New Contact</h2>
            <form action="create_action.jsp" method="get">
                <div>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div>
                    <label for="contact">Contact:</label>
                    <input type="text" id="contact" name="contact" required>
                </div>
                <div>
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required>
                </div>
                <div>
                    <input type="submit" value="Create">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
