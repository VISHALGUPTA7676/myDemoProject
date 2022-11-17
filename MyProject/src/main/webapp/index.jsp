
<%
if (session.getAttribute("USER") == null) {
	response.sendRedirect("index1.jsp");
}
%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%>
<%@ page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>OneClick E_commerce</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OneClick E-Commerce</title>

<link rel="stylesheet" href="CSS/CatDropDown.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/style1.css">
<link rel="stylesheet" href="CSS/profile.css">

<!-- Logo Icon-->
<link rel="shortcut icon" href="img/logo/one.jpeg" />

</head>
<body>
	<!-- header section starts  -->
	<%@ include file="CommanComponent/Header.jsp"%>
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
							value="gotocart"
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
				<p>Plot No-25 ,DC-2, Commercial Area Gandhinagar, Dist-Kuchh</p>
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
					Kuchh, india - 370201
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
				<input type="submit" value="subscribe" class="btn"
					style="width: auto"> <img src="image/payment.png"
					class="payment-img" alt="">
			</div>

		</div>

		<div class="credit">
			copyright &copy; 2021 <a href="#">OneClick</a> All Rights Reserved
		</div>

	</section>

	<!-- footer section ends -->
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

	<!-- custom js file link  -->
	<script src="JavaScript/script1.js"></script>
	<script src="JavaScript/cart.js"></script>

</body>
</html>