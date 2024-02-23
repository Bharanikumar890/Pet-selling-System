<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <style>
        body {
            background-color: skyblue;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            background-color: green;
            color: white;
            padding: 20px;
        }

        h2 {
            margin-top: 20px;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            color: #555;
        }
        
        .button {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #f4f4f4;
            border-radius: 5px;
        }

        .button:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h1>Login Successfully</h1>
    <h1>Welcome ${username}</h1>
    <h2>Link Below to View Pets Details</h2>
    <a href="Pets_details.jsp" class="button">Click here</a>
</body>
</html>
