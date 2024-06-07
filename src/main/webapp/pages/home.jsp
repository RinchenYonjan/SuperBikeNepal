<!-- JSP Page Directive -->
<%@page import="utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>


<!--  These tags indicate a script let in JSP. Code inside these tags is executed on the server side. -->
<!-- The context path of the web application. The context path represents the root of the application's URL space. -->
<%
HttpSession userSession=request.getSession(); 
String currentUser=(String)userSession.getAttribute("username"); 
String contextPath=request.getContextPath();
String uri = request.getRequestURI();
%>


<!DOCTYPE html>
<html>
<!-- Head of home.jsp -->
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Bike Nepal</title> <!-- title name -->
    <link href="${pageContext.request.contextPath}/stylesheets/home1.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<!--- body of home.jsp --->
<body>
  
    <header class ="header">
		<!-- website logo -->        
        <a href="home.html" class="logo">Super Bike Nepal.</a>
		<!-- website navigation bar -->
        <nav class="navbar">
            <a href="../pages/home.jsp" class="active">Home</a>
            <a href="../pages/specification.jsp">Specification</a>
            <a href="../pages/order.jsp">Order</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

	<!-- body container -->
    <div class="container">
        
        <!-- slide show -->
        <div class="slideshow-container">
            <!-- slide show image 1 -->
            <div class="slideshow">
                <img src="${pageContext.request.contextPath}/resources/images/others/duke390.jpg" alt="Duke 390">
            </div>
			<!-- slide show image 2 -->	
            <div class="slideshow">
                <img src="${pageContext.request.contextPath}/resources/images/others/hunter-350.jpg" alt="Hunter 350">
            </div>
			<!-- slide show image 3 -->	
            <div class="slideshow">
                <img src="${pageContext.request.contextPath}/resources/images/others/Panigale-V4.jpg" alt="Panigale-V4">
            </div>
			<!-- slide show image 4 -->	
            <div class="slideshow">
                <img src="${pageContext.request.contextPath}/resources/images/others/XR-190.jpg" alt="XR 190">
            </div>

        </div>

        
        <!-- slide show dots -->
        <div class="dot-container">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
        </div> 
            
        <!-- slide show two button view button & login button -->
        <div class = "lower-buttons">
           		<!-- view button -->	
            	<a href="../pages/specification.jsp" class="view-button">View Details</a>
            
            
            	<form action=" <%if(currentUser != null)
    						 	{
    								out.print(contextPath + "/LogoutServlet"); 
    						 	} else { 
    								out.print(contextPath + "/pages/login.jsp" ); }%>"	method="post">
					
					<!-- login button -->	
       				<div class="login-button">
   				
   						<input type="submit" value=" <%if(currentUser != null)	
   													{ 
   														out.print("Logout"); 
   													} else { 			
    	 												out.print("Login Now"); }%>"/>
        			</div>
            
            	</form>
        
        </div> 

    </div>

    <!-- Product Type Heading  -->
    <div class= "product-type">
        <h2>Product Type</h2>
    </div>

    <!-- Bikes -->
    <div class="bike-product">

        <!-- first row bike --> 
        <div class="row-2">

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/kawasaki.png" alt="kawasaki">
                <h4>Kawasaki Z400 abs</h4> 
            </div> 

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/CBR-250.png" alt="CBR-250">
                <h4>CBR 250R</h4> 
            </div>

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/CBR-600-RR.png" alt="CBR-600-RR">
                <h4>CBR600RR</h4> 
            </div>

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/cbrs350.png" alt="cbrs350">
                <h4>Honda CB350RS</h4> 
            </div> 

        </div>

        <!-- second row bike -->
        <div class="row-2">

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/crf.png" alt="CRF">
                <h4>Honda CRF</h4> 
            </div>

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/D400.png" alt="Dominar-400">
                <h4>Dominar-400</h4> 
            </div>

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/CB-Shine.png" alt="CB-Shine">
                <h4>Honda CB-Shine</h4> 
            </div>

            <div class="column-4">
                <img src="${pageContext.request.contextPath}/resources/images/others/honda dio.png" alt="Honda Dio ">
                <h4>Honda Dio</h4> 
            </div>

        </div>

    </div>
    
    
    <!-- JSP include directive to include footer JSP -->
    <jsp:include page="<%=StringUtils.PAGE_URL_FOOTER%>"></jsp:include>


<!--- javascript for slide show --->
<script src="${pageContext.request.contextPath}/scripts/script.js"></script>

</body>
</html>


