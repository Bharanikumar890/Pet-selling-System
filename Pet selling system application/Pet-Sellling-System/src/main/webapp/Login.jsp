<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            background-image: url("Mainimage.jpg");
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Changed text color for better visibility */
        }

        h2 {
            text-align: center;
            padding-top: 50px;
            font-weight: bold;
            color: #fff; /* Changed text color for better visibility */
        }

        form {
            text-align: center;
            padding-top: 20px;
        }

        table {
            margin: auto;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"],
        input[type="reset"] {
            width: 100%; /* Make the inputs and buttons take up the full width */
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border-radius: 5px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049;
        }
    </style>

    <script>
        function validateForm() {
            var username = document.forms["loginForm"]["textname"].value;
            var password = document.forms["loginForm"]["textpwd"].value;

            // Validate username
            if (!/^[A-Z][a-z]+$/.test(username)) {
                alert("Username should start with a capital letter followed by lowercase letters.");
                return false;
            }

            // Validate password
            if (!/^[A-Za-z0-9]+$/.test(password)) {
                alert("Password should contain only letters (A-Z, a-z) and numbers (0-9).");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

    <h2>User login</h2>

    <form name="loginForm" action="/Javadatabase_connectivity/Login" method="post" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>Enter User Name</td>
                <td><input type="text" name="textname"></td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td><input type="password" name="textpwd"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Login">
                    <input type="reset">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
