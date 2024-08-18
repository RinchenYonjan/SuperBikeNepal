<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Head of home.jsp -->
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Bike Nepal</title> <!-- title name -->
    <link href="${pageContext.request.contextPath}/stylesheets/cart.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>

<header class ="header">
		<!-- website logo -->        
        <a href="home.html" class="logo">Super Bike Nepal.</a>
		<!-- website navigation bar -->
        <nav class="navbar">
            <a href="../pages/home.jsp">Home</a>
            <a href="../pages/specification.jsp">Specification</a>
            <a href="../pages/order.jsp">Order</a>
            <a href="../pages/cart.jsp" class="active">Cart</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

</body>
</html>