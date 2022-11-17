
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%>
<%@ page import="java.util.*"%>
<%
if (session.getAttribute("USER") != null) {
	response.sendRedirect("index.jsp");
}
%>



<!DOCTYPE html>
<html>
<%
Connection conn = null;
%>
<head>

<title>OneClick E_commerce</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OneClick E-Commerce</title>
<link rel="stylesheet" href="CSS/CatDropDown.css">

<link rel="stylesheet" href="CSS/swiper.css">



<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- custom css file link  -->
<link rel="stylesheet" href="CSS/style.css">

<!-- Logo Icon-->
<link rel="shortcut icon" href="img/logo/one.jpeg" />

</head>
<body>
	<!-- header section starts  -->

	<header class="header">

		<a href="index1.jsp" class="logo"><span>One</span>Click</a>

		<nav class="navbar">
			<a href="index1.jsp">home</a> <a href="#products">products</a> <a>
				<div class="dropdown">
					<button class="dropbtn">Categories</button>
					<div class="dropdown-content"
						Style="overflow-y: auto; text-align: left; width: 248px;">

						<form action="AddCat" method="get">
							<a style="background-color: #ffb3b3;"> <%
 String query13 = "SELECT * FROM `sub_categories`";
 /* Statement st=null; */
 //String name="";

 try {
 	Class.forName("com.mysql.cj.jdbc.Driver");
 	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
 	PreparedStatement st = conn.prepareStatement(query13);
 	ResultSet rs = st.executeQuery();
 	System.out.println("yesz");

 	while (rs.next()) {
 %>

								<button class="button" type="submit" name="actionss"
									value="<%=rs.getInt("sub_categories_id")%>"
									style="background-color: #ffb3b3; cursor: pointer; border: none;">
									<i style="cursor: pointer;" class="fa fa-arrow-circle-right"
										aria-hidden="true"></i> &nbsp;<%=rs.getString("sub_categories_name")%></button>&nbsp;<br>

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
			</a> <a href="#footer">Contact Us</a>
		</nav>

		<div class="icons">
			<div class="fas fa-bars" id="menu-btn"></div>
			<div class="fas fa-search" id="search-btn"></div>
			

			<div class="fas fa-shopping-cart" id="cart-btn" style="height: 9px">
			</div>
			<div class="fas fa-user" id="login-btn"></div>
		</div>

		<form action="" class="search-form">
			<input type="search" id="search-box" placeholder="search here...">
			<label for="search-box" class="fas fa-search"></label>
		</form>

		<div class="shopping-cart">
			<h2 class="cart-title">Your Cart</h2>
			<div class="product-rows"></div>
			<div class="total">
				<h1 class="total-title">TOTAL</h1>
				<span class="total-price">$0</span>
				<button class="purchase-btn">PURCHASE</button>
			</div>
		</div>

		<form action="logins" class="login-form" method="post">
			<h3>login now</h3>
			<input type="email" placeholder="your email" name="email" class="box"
				required> <input type="password" placeholder="your password"
				name="pasw" class="box" required>
			<p>
				forget your password <a href="#">click here</a>
			</p>
			<p>
				don't have an account <a href="#" id="signup">create now</a>
			</p>
			<input type="submit" value="login" class="btn" name="action">
		</form>
		<form action="registraion" class="signup-form" method="post">
			<h3>signup now</h3>
			<input type="text" placeholder="First Name" name="fname" class="box"
				required> <input type="text" placeholder="Last Name"
				name="lname" class="box" required> <input type="email"
				placeholder="your email" name="email" class="box" required>
			<input type="number" placeholder="Mobile No" name="mobile"
				class="box" required><br> <span>${Error} </span><br>
			<input type="password" placeholder="your password" name="pasw"
				value="" class="box" id="pwd" required> <input
				type="password" placeholder="Confirm password" value="" class="box"
				id="cpwd" required disabled>
			<div class="alert">
				<i class="fas fa-exclamation-circle errorIcon"></i> <span
					class="text">Enter at least 8 characters</span>
			</div>
			<input type="text" placeholder="eg.ch-53" name="houseno"
				class="box-1" required> <input type="text"
				placeholder="Bulding Name" name="buldiname" class="box-2" required>
			<input type="text" placeholder="landmark/colony/area" name="areaname"
				class="box-3" required> <input type="number"
				placeholder="Pincode" name="pincode" class="box-4" required>
			<input type="text" placeholder="Your City" name="city" class="box-5"
				required>
			<%
			/* Connection conn = null; */
			String query = "select * from statetable";
			/* Statement st=null; */
			String name;
			int va;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
				PreparedStatement st = conn.prepareStatement(query);
				ResultSet rs = st.executeQuery();
				System.out.println("yesz");
			%><select name="state" class="box-5">
				<%
				while (rs.next()) {
				%>


				<option value="<%=rs.getInt("state_id")%>">
					<%=rs.getString("state_name")%></option>


				<%
				}
				%>
			</select>
			<%
			st.close();
			conn.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>


			<!-- <select name="state"  class="box-5">
            <option value="">Select State</option>
            <option value="1">Gujarat</option>
            <option value="2">Rajsthan</option>
            <option value="3">Maharastra</option>
            <option value="4">Bihar</option>
        </select> -->
			<br>
			<div class="gender">
				<input type="radio" name="gender" value="male" id="male" required>
				<label for="male">Male</label> <input type="radio" name="gender"
					value="female" id="female" required> <label for="female">Female</label>
				<input type="radio" name="gender" value="others" id="others"
					required> <label for="others">Others</label>
			</div>
			<p>Already have an account Then Login</p>
			<input type="submit" value="signup now" class="button">
		</form>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<a href="#" class="btn">shop now</a>
		</div>

	</section>

	<!-- home section ends -->

	<!-- features section starts  -->

	<!-- features section ends -->

	<!-- products section starts  -->

	<section class="products" id="products">

		<h1 class="heading">
			our <span>products</span>
		</h1>

		<!-- <div class="swiper product-slider">

			<div class="swiper-wrapper">
 -->

		<div class="swiper product-slider">

			<div class="swiper-wrapper">




				<%
				ArrayList<Product> p = new ArrayList<Product>();
				ProductDao pd = new ProductDao();
				p = pd.displayProduct();

				Product name1 = new Product();
				for (int i = 0; i < p.size(); i++) {
					name1 = p.get(i);
				%>



				<div class="swiper-slide box">
					<form action="AddCat" method="Post">
						<img src="images/<%out.print(name1.getProduct_image());%>"
							class="image" style="width: 220px" alt="">

						<h3>
							<input type="text" readonly
								style="font-size: 12px; width: 100%; font-weight: bold; text-align: center; background-color: white"
								name="ProductName" value="<%=(String) name1.getProduct_name()%>">
						</h3>
						<div class="price">
							<del disabled>
								<i class="fa fa-inr" aria-hidden="true"></i>
								<%
								double price = name1.getProduct_price();
								%>
								<%
								out.print(price);
								%>
							</del>
							<strong style="font-size: 26px">&ensp;<i
								class="fa fa-inr" aria-hidden="true"></i> <%
 double dis = name1.getProduct_Discount();
 double result = (price - (price * dis) / 100);
 out.print(result);
 %>
							</strong>

						</div>
						<input type="number" name="ProId" readonly
							value="<%=name1.getProduct_id()%>"
							Style="background-color: white; color: white; height: 1px;">




						<div class="stars" style="color: green; font-size: 18px">
							<i class="fa fa-inr" aria-hidden="true" style="color: green"></i>
							<%
							dis = (price * dis) / 100;
							out.print(dis);
							%>
							oFF
						</div>
						<button class="btn" type="submit" name="action" value="buynow"
							;
							style="width: 40%; height: 40px">BUY</button>
						<button class="btn" type="submit" name="action"
							value="<%out.print(name1.getProduct_id());%>"
							style="width: 50%; height: 40px">Add To Cart</button>
						&nbsp;<a
							style="background-color: white; color: red; font-size: 22px; font-family: normal;">
							<%-- <%
							out.print(name1.getProduct_Discount());
							%>% OFF --%>
						</a>
					</form>
				</div>

				<%
				}
				%>


				<!-- End -->
			</div>
		</div>


	</section>

	<!-- products section ends -->

	<!-- categories section starts  -->

	<section class="categories" id="categories">

		<h1 class="heading">
			product <span>categories</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<img src="img/catagory/1.png" alt="">
				<h3>Power Tools</h3>
				<p>upto 45% off</p>
				<a href="#" class="btn">shop now</a>
			</div>

			<div class="box">
				<img src="img/catagory/2.png" alt="">
				<h3>Hand Tools</h3>
				<p>upto 45% off</p>
				<a href="#" class="btn">shop now</a>
			</div>

		</div>

	</section>

	<!-- categories section ends -->



	<!-- footer section starts  -->

	<section class="footer" id="footer">

		<div class="box-container">

			<div class="box">
				<h3>
					<a href="#" class="logo"><span>One</span>Click</a>
				</h3>
				<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aliquam, saepe.</p>
				<div class="share">
					<a href="#" class="fab fa-facebook-f"></a> <a href="#"
						class="fab fa-twitter"></a> <a href="#" class="fab fa-instagram"></a>
					<a href="#" class="fab fa-linkedin"></a>
				</div>
			</div>

			<div class="box">
				<h3>contact info</h3>
				<a href="#" class="links"> <i class="fas fa-phone"></i>
					+123-456-7890
				</a> <a href="#" class="links"> <i class="fas fa-phone"></i>
					+111-222-3333
				</a> <a href="#" class="links"> <i class="fas fa-envelope"></i>
					OneClick@gmail.com
				</a> <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i>
					Ahmedabad, india - 380001
				</a>
			</div>

			<div class="box">
				<h3>quick links</h3>
				<a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					home
				</a> <a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					features
				</a> <a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					products
				</a> <a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					categories
				</a> <a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					review
				</a> <a href="#" class="links"> <i class="fas fa-arrow-right"></i>
					blogs
				</a>
			</div>

			<div class="box">
				<h3>newsletter</h3>
				<p>subscribe for latest updates</p>
				<input type="email" placeholder="your email" class="email">
				<input type="submit" value="subscribe" class="btn"> <img
					src="image/payment.png" class="payment-img" alt="">
			</div>

		</div>

		<div class="credit">
			copyright &copy; 2021 <a href="#">OneClick</a> All Rights Reserved
		</div>

	</section>

	<!-- footer section ends -->
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>



	<!-- custom js file link  -->
	<script src="JavaScript/script.js"></script>



</body>
</html>