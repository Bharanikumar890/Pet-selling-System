<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Address Entry Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .form-container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>

    <script>
        function validateForm() {
            var address = document.forms["addressForm"]["address"].value;
            var city = document.forms["addressForm"]["city"].value;
            var zip = document.forms["addressForm"]["zip"].value;
            var phone = document.forms["addressForm"]["phone"].value;

            var addressRegex = /^[a-zA-Z0-9\s]+$/;
            var cityRegex = /^[a-zA-Z\s]+$/;
            var zipRegex = /^\d{6}$/;
            var phoneRegex = /^\d{10}$/;

            // Validate address
            if (!addressRegex.test(address)) {
                document.getElementById("addressError").innerHTML = "Address must contain both numbers and alphabets.";
                return false;
            } else {
                document.getElementById("addressError").innerHTML = "";
            }

            // Validate city
            if (!cityRegex.test(city)) {
                document.getElementById("cityError").innerHTML = "City must contain alphabets.";
                return false;
            } else {
                document.getElementById("cityError").innerHTML = "";
            }

            // Validate ZIP code
            if (!zipRegex.test(zip)) {
                document.getElementById("zipError").innerHTML = "ZIP code must be a 6-digit number.";
                return false;
            } else {
                document.getElementById("zipError").innerHTML = "";
            }

            // Validate phone number
            if (!phoneRegex.test(phone)) {
                document.getElementById("phoneError").innerHTML = "Phone number must be a 10-digit number.";
                return false;
            } else {
                document.getElementById("phoneError").innerHTML = "";
            }

            return true;
        }

        // Clear error messages when user starts typing
        document.getElementById("address").addEventListener("input", function () {
            document.getElementById("addressError").innerHTML = "";
        });

        document.getElementById("city").addEventListener("input", function () {
            document.getElementById("cityError").innerHTML = "";
        });

        document.getElementById("zip").addEventListener("input", function () {
            document.getElementById("zipError").innerHTML = "";
        });

        document.getElementById("phone").addEventListener("input", function () {
            document.getElementById("phoneError").innerHTML = "";
        });
    </script>
</head>
<body>
    <h2>Enter Your Details</h2>

    <div class="form-container">
        <form name="addressForm" action="ProcessAddress.jsp" method="post" onsubmit="return validateForm()">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            <span id="addressError" class="error-message"></span>

            <label for="city">City:</label>
            <input type="text" id="city" name="city" required>
            <span id="cityError" class="error-message"></span>

            <label for="zip">ZIP Code:</label>
            <input type="text" id="zip" name="zip" required>
            <span id="zipError" class="error-message"></span>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            <span id="phoneError" class="error-message"></span>
<form name="addressForm" action="Address.jsp" method="post">
    <button type="submit" formaction="Thankyou.jsp">Submit</button>
</form>

</body>
</html>
