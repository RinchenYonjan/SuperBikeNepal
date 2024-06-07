<%@page import="utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- JSP Taglib directive to import tab library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String contextPath = request.getContextPath();
String errMsg = (String) request.getAttribute(StringUtils.MESSAGE_ERROR);
String successMsg = (String) request.getAttribute(StringUtils.MESSAGE_SUCCESS);
String username = (String) request.getAttribute(StringUtils.USERNAME);
String successParam = request.getParameter(StringUtils.SUCCESS);
%>


<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/login2.css" />
</head>

<!--- Body --->
<body>

 	 <!--- heading --->
	 <header class ="header">
        <!--- logo for login.jsp --->
        <a href="../pages/home.jsp" class="logo">Super Bike Nepal.</a>
		<!--- navigation for login.jsp --->
        <nav class="navbar">
            <a href="../pages/home.jsp">Home</a>
            <a href="../pages/specification.jsp">Specification</a>
            <a href="../pages/order.jsp">Order</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

	<!--- Login box --->
	<div class="login-box">
	
		<h2>Login</h2>
		
		<!--- using post method --->
		<form action="<%=contextPath%>/LoginServlet" method="post">
		
			<div class="row">
			
				<div class="col">
					<label for="username">Username:</label> 
					<input type="text" id="username" name="username" required>
				</div>
				
			</div>
			
			<div class="row">
				<div class="col">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" required>
				</div>
			</div>
			
			<h4>Don't Have An Account?<a href="<%=contextPath + StringUtils.PAGE_URL_REGISTER%>" class="register-link">Register Here</a></h4>
			
			<button type="submit" class="login-button">Login</button>
		
		</form>
		
		<%
		if (errMsg != null) {
		%>
		<p class="error-msg">
			<%
			out.println(errMsg);
			%>
		</p>
		<%
		}

		if (successParam != null && successParam.equals(StringUtils.TRUE)) {
		%>
		<h2 class="success-msg">Registration Successful!</h2>
		<%
		}
		%>
			
	</div>
	
	
</body>
</html>



    