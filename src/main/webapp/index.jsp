<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('assets/car3d.jpg'); /* Ensure the path is correct */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #f0f0f0; /* Fallback color */
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        color: #ffffff;
        margin-top: 50px;
        text-shadow: 2px 2px 4px #000000;
    }

    .container {
        background: rgba(255, 255, 255, 0.8);
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    button {
        background-color: #FF8C00; /* Dark orange */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin: 10px 0;
        padding: 10px 20px;
        display: inline-block;
        text-decoration: none;
        position: relative;
        overflow: hidden;
        transition: background-color 0.3s, transform 0.3s;
    }

    button:before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 300%;
        height: 300%;
        background-color: rgba(255, 255, 255, 0.15);
        transform: translate(-50%, -50%) rotate(45deg);
        transition: width 0.3s, height 0.3s;
        border-radius: 50%;
        z-index: 0;
    }

    button:hover:before {
        width: 400%;
        height: 400%;
    }

    button:hover {
        background-color: #FF4500; /* Slightly darker shade of dark orange */
        transform: scale(1.05);
    }

    button a {
        color: white;
        text-decoration: none;
        position: relative;
        z-index: 1;
    }

    button a:hover {
        color: dark orange;
    }
</style>
</head>
<body>

<h1>Welcome to Car Management System Dashboard</h1>

<div class="container">
    <button><a href="AddCar.jsp">ADD CARS</a></button><br>
    <button><a href="DisplayCar">DISPLAY ALL CARS</a></button>
</div>

</body>
</html>
