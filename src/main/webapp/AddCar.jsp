<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('assets/addCar.jpg'); /* Replace with your image URL */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #ffffff;
        margin-top: 50px;
        font-size: 36px; /* Increase font size for more emphasis */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add text shadow for depth */
    }

    form {
        background: rgba(255, 255, 255, 0.8);
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        font-size: 16px;
        color: #333;
    }

    input[type="text"],
    input[type="number"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #FF4500; /* Transparent orange color */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #FF6347; /* Darker transparent orange color on hover */
    }
</style>
</head>
<body>
<h2>Fill the Required Information of Car</h2>

<form action="addCar" method="post">
    <label>Car ID:</label>
    <input type="text" placeholder="CarID" name="cId"><br>

    <label>Car Model:</label>
    <input type="text" placeholder="CarModel" name="cModel"><br>

    <label>Car Brand:</label>
    <input type="text" placeholder="CarBrand" name="cBrand"><br>

    <label>Car Price:</label>
    <input type="number" placeholder="CarPrice" name="cPrice"><br>

    <input type="submit" value="Add Car">
</form>
</body>
</html>
