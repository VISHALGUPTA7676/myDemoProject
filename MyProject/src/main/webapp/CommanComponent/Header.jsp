
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OneClick E-Commerce</title>
<link rel="stylesheet" href="CSS/CatDropDown.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="CSS/swiper.css">
<!-- font awesome cdn link --> 
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="CSS/profile.css">

<!-- Logo Icon -->
<link rel="shortcut icon" href="../img/logo/one.jpeg">

</head>
 <body>

	<header class="header">

		<a href="index.jsp" class="logo"><span>One</span>Click</a>

		<nav class="navbar">
			<a href="index.jsp">home</a>  <a
				href="#products">products</a> <a href="#categories"></a>
			<div class="dropdown">
				<button class="dropbtn">Categories</button>
				<div class="dropdown-content"
					Style="overflow-y: auto; text-align: left;width:248px;">
					<form action="AddCat" method="post">
						<a  style="background-color: #ffb3b3;"> <%
						 String query13 = "SELECT * FROM `sub_categories`";
						 /* Statement st=null; */
						 //String name="";
						Connection conn=null;
						 try {
						 	Class.forName("com.mysql.cj.jdbc.Driver");
						 	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
						 	PreparedStatement st = conn.prepareStatement(query13);
						 	ResultSet rs = st.executeQuery();
						 	System.out.println("yesz");
						
						 	while (rs.next()) {
						 %>
						
													<button  class="button" type="submit"	 name="action"
														value="<%=rs.getInt("sub_categories_id")%>"
														style="background-color: #ffb3b3;cursor:pointer; border: none;"><i style="cursor:pointer;"class="fa fa-arrow-circle-right" aria-hidden="true"></i>
														&nbsp;<%=rs.getString("sub_categories_name")%></button>&nbsp;<br>
						
													<%
													}
													%> <%
						 st.close();
						 conn.close();
						 } catch (Exception e) {
						 e.printStackTrace();
						 }
						 %>
						</a>


					</form>



				</div>
			</div>
			<a href="#footer">Contact Us</a>
		</nav>

		<div class="icons">
			<div class="fas fa-bars" id="menu-btn"></div>
			<div class="fas fa" id="search-btn"><i class="fa fa-list" aria-hidden="true"></i>
			</div>
			<a href="Kart.jsp"><div class="fas fa-shopping-cart" id="cart-btn" style="height: 9px">
			</div></a>
			<div class="fas fa-usr" id="login-btn">${FName}${LName}</div>

		</div>

		<div class="login-form">
		
		<h3>User Profile</h3>
		
          <div class="fname links"><i class="fas fa-user"></i>${CFN}</div>
        <div class="lname">${CLN}</div>
        <div class="email links"><i class="fas fa-envelope"></i>${EML }</div>
        <div class="mnumber links"><i class="fas fa-phone"></i>${MN}</div>
        <div class="city links"><i class="fas fa-map-marker-alt"></i>${DN},${SN}</div>
        <div class="loginbtn">
        <form action="logins" method="get"><input type="submit" value="logout" class="btn" name="action"></form>
        </div>
		</div>
		

		<form action="" class="search-form">
				
		</form>

		<div class="shopping-cart">
			<h2 class="cart-title">Your Cart</h2>
			<div class="cart-content"></div>

			<button class="checkout">checkout</button>
		</div>


		<!-- <form action="" class="login-form">
        <h3>login now</h3>
        <input type="email" placeholder="your email" class="box">
        <input type="password" placeholder="your password" class="box">
        <p>forget your password <a href="#">click here</a></p>
        <p>don't have an account <a href="#" id="signup">create now</a></p>
        <input type="submit" value="login now" class="btn">
    </form>
    <form action="" class="signup-form">
        <h3>signup now</h3>
        <input type="text" placeholder="First Name" class="box">
        <input type="text" placeholder="Last Name" class="box">
        <input type="email" placeholder="your email" class="box">
        <input type="email" placeholder="your email" class="box">
        <input type="password" placeholder="your password" class="box">
        <p>Already have an account <a href="#">Login</a></p>
        <input type="submit" value="login now" class="btn">
    </form> -->

	</header>
	
	<!-- footer section ends -->
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

</body>
</html>
