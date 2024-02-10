<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .thankyou-container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        img {
            max-width: 100%;
            margin-top: 20px;
        }

        .logout-link {
            position: absolute;
            top: 10px;
            right: 10px;
            text-decoration: none;
            color: red; /* Set the color to red */
            font-weight: bold; /* Optionally, make it bold */
        }
    </style>
</head>
<body>
    <a href="Login.jsp" class="logout-link">Logout</a>

    <div class="thankyou-container">
        <h1>Thank You for Placing Order😊!!!!!</h1>
        <h1>Have a nice day ❤️</h1>
        <p>Your pet will be delivered as soon as possible.</p>
        <!-- You can replace "path/to/your/image.jpg" with the actual path to your image -->
        <img src="Thankyou.jpg" alt="Thank You Image">
    </div>
</body>
</html>
