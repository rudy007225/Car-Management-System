<%@page import="com.jsp.carManagementSystem.*" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Car</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('assets/show.jpg'); /* Replace with your background image URL */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-color: #f0f0f0; /* Fallback color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        width: 100%;
        max-width: 800px;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 15px;
        text-align: left;
    }

    th {
        background-color: #4CAF50;
        color: white;
        font-weight: bold;
        text-transform: uppercase;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e0e0e0;
    }

    /* Button styles */
    .action-button {
        background-color: #FF6347; /* Coral red */
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .action-button:hover {
        background-color: #FF4500; /* Darker orange on hover */
    }

    /* Responsive table styling */
    @media only screen and (max-width: 600px) {
        th, td {
            padding: 10px;
        }
        .action-button {
            padding: 8px 16px;
            font-size: 14px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <table id="carTable">
            <thead>
                <tr>
                    <th>Car ID</th>
                    <th>Car Model</th>
                    <th>Car Brand</th>
                    <th>Car Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% List<Car> cars = (List<Car>) request.getAttribute("carList");
                   for (Car c : cars) { %>
                <tr>
                    <td><%= c.getCarId() %></td>
                    <td><%= c.getCarModel() %></td>
                    <td><%= c.getCarBrand() %></td>
                    <td><%= c.getCarPrice() %></td>
                    <td>
                        <a href="updateCar?carId=<%= c.getCarId() %>" class="action-button">Update</a>
                        <a href="deleteCar?carId=<%= c.getCarId() %>" class="action-button">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
