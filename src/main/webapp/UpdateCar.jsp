<%@page import="com.jsp.carManagementSystem.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Car</title>
</head>
<body>

<h2>Enter the Car Information : </h2><br><br>

   <section>
	<form action="saveUpdateCar" method="post">
	
		<input type="number" name="carId" placeholder="Car ID"><br>
		<input type="text" name="carModel" placeholder="Car Name"><br>
		<input type="text" name="carBrand" placeholder="Car Brand"><br>
		<input type="number" name="carPrice" placeholder="Car Price"><br>
		
		<input type="submit" value="Update">
		
	</form>
  </section>
</body>
</html>