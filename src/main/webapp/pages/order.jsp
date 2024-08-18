<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>RegisterForm</title>
	<link rel="stylesheet" type="text/css" href="../stylesheets/order.css" />
</head>

<body>

	 <!--- heading --->
	 <header class ="header">
        
        <a href="home.html" class="logo">Super Bike Nepal.</a>

        <nav class="navbar">
            <a href="../pages/home.jsp">Home</a>
            <a href="../pages/specification.jsp">Specification</a>
            <a href="../pages/order.jsp" class="active">Order</a>
            <a href="../pages/cart.jsp">Cart</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

	<div class="container">

		<h1>Order Now</h1>

		<form action="../RegisterServlets" method="post">
		
			<div class="row">
				<div class="col">
					<label for="username">Username:</label> 
					<input type="text" id="username" name="username" required>
				</div>

				<div class="col">
					<label for="email">Email:</label> 
					<input type="email" id="email" name="email" required>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<label for="phoneNumber">Phone Number:</label> 
					<input type="tel" id="phoneNumber" name="phoneNumber" required>
				</div>

				<div class="col">
					<label for="bikename">Bike Name:</label> 
					<input type="text" id="bikename" name="bikename" required>
				</div>
			</div>

			<div class="row">		
				<div class="col">
					<label for="bikecolor">Bike Color:</label> 
					<select id="bikecolor" name="bikecolor" required>
						<option value="red">Red</option>
						<option value="blue">Blue</option>
					</select>
				</div>
				
				<div class="col">
					<label for="quantity">Quantity:</label> 
					<input type="text" id="quantity" name="quantity" required>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<label for="payment">Payment Method:</label> 
					<select id="payment" name="payment" required>
						<option value="Cash on Delivery">Cash on Delivery</option>
						<option value="Online Payment">Online Payment</option>
					</select>
				</div>
			</div>
	

			<button type="submit">Conform</button>

		</form>
	
	</div>

</body>
</html>

    