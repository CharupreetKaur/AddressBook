<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Address Book</title>
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
            background-color: #FF69B4; 
            color: white;
        }
        .content {
    		flex: 1;
    		padding: 20px;
    		background: url('https://wallpapercave.com/wp/wp4956300.jpg') no-repeat center center; 
    		background-size: cover;
    		color: black; 
    		border-left: 5px solid #C71585; 
		}
		.content h2 {
    		margin-top: 0;
		}
		.content p {
    		padding: 10px;
    		border-radius: 4px;
		}
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <jsp:include page="link.jsp" />
        <div class="content">
            <h2>Welcome to the Address Book!</h2>
            <p>We're thrilled to have you here. 
            This platform is designed to help you effortlessly manage your contacts with our user-friendly interface. 
            Whether you want to create new entries, read through your existing contacts, update any information, or 
            delete entries you no longer need, we've got you covered. </p>
            <p>Explore the options in the navigation menu above: </p>
            <p>HOME to return to this welcome page </p> 
            <p>CREATE to add new contacts</p>
            <p>READ to view your list</p> 
            <p>UPDATE to edit details</p>
            <p>DELETE to remove entries</p> 
            <p>NEW UPDATE to get name and edit their details </p>
            <p>NEW PREFILLED FORM to get pre-filled details and edit their contact and address</p>
            <p>Enjoy organizing your contacts with ease and efficiency!</p>
        </div>
    </div>
</body>
</html>
