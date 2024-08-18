<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="utils.StringUtils"%>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Bike Nepal</title>
    <link rel="stylesheet" href="../stylesheets/contact.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<!--- body --->
<body>
    
    <!--- heading --->
    <header class ="header">
        
        <a href="home.html" class="logo">Super Bike Nepal.</a>

        <nav class="navbar">
            <a href="home.jsp">Home</a>
            <a href="specification.jsp">Specification</a>
            <a href="order.jsp">Order</a>
            <a href="../pages/cart.jsp">Cart</a>
            <a href="contact.jsp" class="active">Contact</a>
        </nav>
        
    </header> 
    
    <!-- Heading  -->
    <div class="hero">

        <div class="hero-section">

            <div class= "heading">
                <h2>Contact Us</h2>
                <h3>If you have any comments or suggestions<br>
                    concerning Nepal Super Bike Nepal automobiles or services.<br>
                    You can contact Super Bike Nepal at the address<br>
                    provided below.<br>
                </h3>
            </div>
        
            <div class= "heading">
                <h2>Super Motorcycles & Scooters Nepal</h2>
                <h3>Jyoti Bhawan, Kantipath, Kathmandu<br>
                    Tel: 01-4267368, 01-4163501<br>
                    E-mail:syakarcare@syakarsuper.com<br>
                </h3>
            </div>
        
            <div class= "heading">
                <h2>Sales Contact</h2>
                <h3>Dhobighat Showroom: 01-5153041, 9801161793<br>
                    E-mail:sale.car@syakarsuper.com<br>
                </h3>
            </div>
        
            <div class= "heading">
                <h2>Sales Contact</h2>
                <h3>Dhobighat Showroom: 01-5153542, 9801128910<br>
                    E-mail:sale.car@syakarsuper.com<br>
                </h3>
            </div>       
        
        </div>
        
    </div>
        

    <!-- JSP include directive to include footer JSP -->
    <jsp:include page="<%=StringUtils.PAGE_URL_FOOTER%>"></jsp:include>


</body>
</html>    

