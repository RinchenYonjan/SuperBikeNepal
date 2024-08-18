<%@page import="utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>


<%
String contextPath = request.getContextPath();
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Bike Nepal</title>
    <link href="${pageContext.request.contextPath}/stylesheets/specification.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<!--- body --->
<body>
    
    <!--- heading --->
    <header class ="header">
        
        <a href="home.html" class="logo">Super Bike Nepal.</a>

        <nav class="navbar">
            <a href="../pages/home.jsp">Home</a>
            <a href="../pages/specification.jsp" class="active">Specification</a>
            <a href="../pages/order.jsp">Order</a>
            <a href="../pages/cart.jsp">Cart</a>
            <a href="../pages/contact.jsp">Contact</a>
        </nav>
        
    </header> 

    <div class="container">
        
            
            <div class="Hero-container">
                <img src="${pageContext.request.contextPath}/resources/images/others/dominor400.jpg" alt="dominor">
            </div>

   
            <!-- button -->
        <div class = "lower-buttons">
           
            <a href="#" class="view-btn">Share</a>
            
            <a href="#" class="order-btn">Ask Us</a> 
        
        </div> 

    </div>

   
   <div class="mid-container">


   		<div class= "heading">
        	<h1>Engine</h1>
   		</div>
   
   		<img src="${pageContext.request.contextPath}/resources/images/others/engine.png">
   
   		<h4>The unique ACG starter motor removes gear meshing<br>  
  		 noise and helps start the engine without a jolt.<br>  
   		Effortless ignition, silent start.</h4>
   
      
   		<div class= "heading">
        	<h1>Features</h1>
   		</div>
   
   		<img src="${pageContext.request.contextPath}/resources/images/others/digitalmeter.png" >    
   
    	<h4>The full digital meter displays real-time mileage, average<br>
    		mileage, distance to empty, service due indicator, gear<br>
    		position indicator & eco indicator. It also includes the side<br>
    		stand indicator with engine cut-off that adds to the<br>
    	    safety of the rider.</h4> 
 
   </div>


    <!-- JSP include directive to include footer JSP -->
    <jsp:include page="<%=StringUtils.PAGE_URL_FOOTER%>"></jsp:include>
    

</body>
</html>




