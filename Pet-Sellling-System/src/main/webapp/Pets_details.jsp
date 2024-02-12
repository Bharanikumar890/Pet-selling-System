<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Pets</title>
    <style>
        body {
		    font-family: Arial, sans-serif;
		    background-image: url('newdog.jpg');
		    background-size: cover;
		    background-repeat: no-repeat;
		    background-position: center center;
		    background-attachment: fixed; /* This will fix the background */
		    margin: 0;
		    padding: 0;
             }


        div {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div>
        <h2>Available pets:</h2>
    </div>
    <table>
        <tr>
            <th>S.NO</th>
            <th>BREEDS</th>
            <th>PRICE</th>
            <th>DETAILS OF BREEDS</th>
        </tr>
        <tr>
            <td>1.</td>
            <td>[Labrador-Male puppy]</td>
            <td>15000 </td>
            <td><a href="Labrador.jsp" > Click here for labrador puppy</a></td>
        </tr>
        <tr>
            <td>2.</td>
            <td>[Rottweiler-Female puppy]</td>
            <td>20000</td>
            <td><a href="Rottweiler.jsp" > Click here for Rottweiler puppy</a></td>
        </tr>
        <tr>
            <td>3.</td>
            <td>[Doberman-Male puppy]</td>
            <td>25000 </td>
            <td><a href="Doberman.jsp" > Click here for Doberman puppy</a></td>
        </tr>
    </table>
</body>
</html>
