<%@page import="utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
String contextPath = request.getContextPath();
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>RegisterForm</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/register2.css" />
</head>

<body>
	 <!--- heading --->
	 <header class ="header">
        
        <a href="home.html" class="logo">Super Bike Nepal.</a>

        <nav class="navbar">
            <a href="../pages/home.jsp">Home</a>
            <a href="../pages/specification.jsp">Specification</a>
            <a href="../pages/order.jsp">Order</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

	<div class="container">

		<h1>Registration Form</h1>

		<form action="<%=contextPath%>/RegisterStudentServlet" method="post" enctype="multipart/form-data">
		
			<div class="row">
				
				<div class="col">
					<label for="username">Username:</label> 
					<input type="text" id="username" name="username" required>
				</div>

				<div class="col">
					<label for="birthday">Birthday:</label> 
					<input type="date" id="birthday" name="birthday" required>
				</div>

			</div>

			<div class="row">

				<div class="col">
					<label for="gender">Gender:</label> 
					<select id="gender" name="gender" required>
						<option value="male">Male</option>
						<option value="female">Female</option>
					</select>

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
					<label for="location">Location:</label> 
					<input type="place" id="location" name="location" required>
					</select>
				</div>
			</div>

			<div class="row">

				<div class="col">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" required>
				</div>

				<div class="col">
					<label for="retypePassword">Conform Password:</label> 
					<input type="password" id="retypePassword" name="retypePassword" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col">
					<label for="image">Profile Picture</label> 
					<input type="file"
						id="image" name="image">
				</div>
			</div>
			
			<h4>Already Have An Account?<a href="../pages/login.jsp" class="signin-link">Login Here</a></h4>

			<button type="submit">Register</button>

		</form>
		
		<%
		String errMsg = (String) request.getAttribute(StringUtils.MESSAGE_ERROR);
		String successMsg = (String) request.getAttribute(StringUtils.MESSAGE_SUCCESS);

		if (errMsg != null) {
			// print
		%>
		<h4 class="error-msg">
			<%
			out.println(errMsg);
			%>
		</h4>
		<%
		}

		if (successMsg != null) {
		// print
		%>
		<h4 class="success-msg">
			<%
			out.println(successMsg);
			%>
		</h4>
		<%
		}
		%>
		
	</div>

</body>
</html>

    