<%@page import="java.util.List"%>
<%@page import="org.hibernate.Cache"%>
<%@page import="com.jsp.carManagementSystem.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Delete Car</title>
</head>
<body>

<h2>Enter the CarID : </h2><br><br>

	 <section>
		<form action="deleteCar" method="get">
			<input type="number" placeholder="carID"  name="carId" readonly="readonly" required><br><br>
			<input type="submit" value="Delete">	
		</form>
	 </section>
</body>
</html>