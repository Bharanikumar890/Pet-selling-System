<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Labrador Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        img {
            margin-top: 20px;
        }

        .description-box {
            border: 1px solid #ddd;
            padding: 20px;
            margin: 20px;
            background-color: #fff;
            border-radius: 8px;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            color: #333;
            background-color: #f4f4f4;
            border-radius: 5px;`
        }

        .button-container a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h2>Labrador 🐾</h2>
    <img src="Lab.jpg" alt="Labrador Image" width="300">
    
    <div class="description-box">
        <p>
            The Labrador Retriever is one of the most popular dog breeds in the United States. 
            They are known for their friendly and outgoing nature. Labradors are intelligent and versatile,
            making them excellent family pets, guide dogs, and working dogs.
        </p>
    </div>

    <div class="button-container">
        <a href="Address.jsp">Click here to Continue</a>
        <a href="Pets_details.jsp">Back to Pets Details</a>
    </div>
</body>
</html>
