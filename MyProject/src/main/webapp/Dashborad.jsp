<%@page import="java.sql.*"%>
<%-- <%@page import="java.sql.PreparedStatement"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%
Connection conn = null;
%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- link external css -->
<title>OneClick E-Commerce</title>
<link rel="shortcut icon" href="img/logo/one.jpeg" />
<link rel="stylesheet" href="CSS/stylesDashboard.css">
<link rel="stylesheet" type="text/css" href="CSS/styleDashboard.css">
<script src="https://kit.fontawesome.com/db80c03651.js"
	crossorigin="anonymous"></script>


<title>Admin Panel</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

	<div class="side-menus">
		<div class="brand-names">

			<ul>
				<a href="" data-bs-toggle="modal" data-bs-target="#myModal">
					<li><i class="fa fa-bars" aria-hidden="true"></i>&nbsp;&nbsp;
						<span>Add_Catogory</span></li>
				</a>
				<a href="" data-bs-toggle="modal" data-bs-target="#EnterSubCat">
					<li><i class="fa fa-bars" aria-hidden="true"></i>&nbsp;&nbsp;
						<span Style="font-size: 17px">Add Sub catogory</span></li>
				</a>

				<a href="" data-bs-toggle="modal" data-bs-target="#myModal1">
					<li><i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;&nbsp;<span>Add_Produuct</span>
				</li>
				</a>
				<a href="" data-bs-toggle="modal" data-bs-target="#AddImage">
					<li><i class="fa fa-picture-o" aria-hidden="true"></i>&nbsp;&nbsp;<span>Add_Image</span>
				</li>
				</a>
				<a href="" data-bs-toggle="modal" data-bs-target="#myBrand">
					<li><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;&nbsp;<span>Add_Brands</span>
				</li> <a href="" data-bs-toggle="modal" data-bs-target="#ShowSubCAt">
						<li><i class="fa fa-bars" aria-hidden="true"></i>&nbsp;&nbsp;
							<span style="font-size: 16px">Show S_Catogory</span></li>
				</a> <a href="CrudOnProduct.jsp	">
						<li><i class="fa fa-calculator" aria-hidden="true"></i>&nbsp;&nbsp;<span>Product_Manage</span>
					</li>
				</a>
					
						<button style="border: none; background-color: #f05462;"
							type="submit" name="action" value="showproductsAll"
							data-bs-toggle="modal" data-bs-target="#Showalltypesproducts">
							<a href="">
								<li><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<span
									style="font-size: 16px">Show All Category</span></li>
						</button>
				</a>
				
							</ul>
		</div>
	</div>

	<div class="main_Header_file">
		<div class="main_Header">
			<div class="navvs">
				<div class="brands_names">
					<h1
						style="color: white; font-family: corbel; color: red; font-size: 32px; font-weight: bold;">
						One<span style="color: black; font-size: 32px; font-weight: bold;">click</span>
					</h1>
				</div>
				<div class="search">
					<form class="search">
						<input type="text" placeholder="Search Here Products"
							style="border-right-style: none; outline: none">
						<button type="submit">
							<img src="img/search.png" alt="">
						</button>
					</form>
				</div>
				<div class="user">
					<a href=""><img src="img/notifications.png" alt=""></a>
					<div class="imgs-cases">
						<a href=""><img src="img/user.png" alt=""></a>
					</div>
				</div>
			</div>
		</div>

		<div class="contents" style="padding-bottom: 44px;">
			<div
				style="text-align: center; text-shadow: 2px 2px 5px red; font-size: 22px">
				<%
				String name = (String) session.getAttribute("AddCatSuccesfully");
				String nam = (String) session.getAttribute("CatgoryExist");
				String name1 = (String) session.getAttribute("PE");
				String name2 = (String) session.getAttribute("PD");
				String name3 = (String) session.getAttribute("AddSubCatSuccesfully");
				String name4 = (String) session.getAttribute("AddBrabdSuccesfully");
				String name5 = (String) session.getAttribute("AddImgSuccesfully");
				if (name != null) {
					out.print(name);
					session.removeAttribute("CatgoryExist");
					session.invalidate();
				} else if (nam != null) {
					out.print(nam);
					session.removeAttribute("AddCatSuccesfully");
					session.invalidate();
				} else if (name1 != null) {
					out.print(name1);
					session.removeAttribute("PE");
					session.invalidate();
				} else if (name2 != null) {
					out.print(name2);
					session.removeAttribute("PD");
					session.invalidate();
				} else if (name3 != null) {
					out.print(name3);
					session.removeAttribute("AddSubCatSuccesfully");
					session.invalidate();
				} else if (name4 != null) {
					out.print(name4);
					session.removeAttribute("AddBrabdSuccesfully");
					session.invalidate();
				} else if (name5 != null) {
					out.print(name5);
					session.removeAttribute("AddImgSuccesfully");
					session.invalidate();
				}
				%>
			</div>
			<div class="cardies">
				<a href="">
					<div class="cardie">
						<div class="box">
							<!-- <h1>2194</h1> -->
							<%
							//Connection conn = null;
							String query23 = "SELECT * FROM `customer` ";
							/* Statement st=null; */
							//String name="";
							int j23 = 0;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query23);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									/* System.out.println(j); */
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>

							<%
							j23 = j23 + 1;
							}
							%><h1><%=j23%></h1>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>

							<h3>Customers</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-users" aria-hidden="true"></i>
						</div>
					</div>
				</a> <a href="">
					<div class="cardie">
						<div class="box">
							<h1>53</h1>
							<h3>Total Orders</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</div>
					</div>
				</a> <a href="" data-bs-toggle="modal" data-bs-target="#catlists">
					<div class="cardie">
						<div class="box">

							<%
							//Connection conn = null;
							String query13 = "SELECT * FROM `product_categories`";
							/* Statement st=null; */
							//String name="";
							int j1 = 0;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query13);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									System.out.println(j1);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>

							<%
							j1 = j1 + 1;
							}
							%><h1><%=j1%></h1>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>

							<h3>Total Catogary</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</div>
				</a> <a href="" data-bs-toggle="modal" data-bs-target="#ShowSubCAt"><div
						class="cardie">
						<div class="box">
							<!-- <h1>350000</h1> -->
							<%
							//Connection conn = null;
							String query25 = "SELECT * FROM `sub_categories` ";
							/* Statement st=null; */
							//String name="";
							int j25 = 0;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query25);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									System.out.println(j1);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>

							<%
							j25 = j25 + 1;
							}
							%><h1><%=j25%></h1>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>


							<h3>
								Total <br>Sub Catogary
							</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</div> </a> <a href="" data-bs-toggle="modal" data-bs-target="#showProduct">
					<div class="cardie">
						<div class="box">
							<!-- <h1>350000</h1> -->
							<%
							//Connection conn = null;
							String query21 = "SELECT * FROM `products`";
							/* Statement st=null; */
							//String name="";
							int j21 = 0;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query21);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									System.out.println(j1);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>

							<%
							j21 = j21 + 1;
							}
							%><h1><%=j21%></h1>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>

							<h3>Total Products</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-product-hunt" aria-hidden="true"></i>
						</div>
					</div>
				</a> <a href="" data-bs-toggle="modal" data-bs-target="#brandshow">
					<div class="cardie">
						<div class="box">
							<!-- <h1>350000</h1> -->
							<%
							//Connection conn = null;
							String query22 = "SELECT * FROM `product_brand` ";
							/* Statement st=null; */
							//String name="";
							int j22 = 0;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query22);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									System.out.println(j1);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>

							<%
							j22 = j22 + 1;
							}
							%><h1><%=j22%></h1>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>

							<h3>Total Brands</h3>
						</div>
						<div class="icon-case">
							<i class="fa fa-list-alt" aria-hidden="true"></i>
						</div>
					</div>
				</a>

			</div>
			<!-- <div>
				<div class="contents-2">
					<div class="recent-payments">
						<div class="title">
							<h2>Recent Payments</h2>
							<a href="#" class="btn">View All</a>
						</div>
						<table>
							<tr>
								<th>Name</th>
								<th>School</th>
								<th>Amount</th>
								<th>Option</th>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
							<tr>
								<td>John Doe</td>
								<td>St. James College</td>
								<td>$120</td>
								<td><a href="#" class="btn">View</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>

 -->	<!-- show CAt -->
	<div class="modal" id="catlists">
		<div class="modal-dialog  ">
			<div class="catl modal-content ">

				<!-- Modal Header -->

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Catogary List</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>


				<!-- Modal body -->
				<div class="modal-body">

					<table class="table">
						<thead>
							<tr>
								<th>Sr No</th>
								<th>Catogary Name</th>
								<!-- <th>Description</th> -->
							</tr>
						</thead>

						<tbody>
							<%
							//Connection conn = null;
							String query = "select categories_name from product_categories";
							/* Statement st=null; */
							//String name="";
							int i = 1;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									//System.out.println(va);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>
							<tr>
								<td><%=i%></td>
								<td><%=rs.getString("categories_name")%></td>
								<%-- <td><%=rs.getString("categories_description") %></td> --%>
							</tr>
							<%
							i = i + 1;
							}
							%>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
	<!-- 	end show cat -->

	<!-- Show Product -->
	<div class="modal" id="showProduct">
		<div class="modal-dialog  modal-xl">
			<div class="cat12 modal-content ">

				<!-- Modal Header -->

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Product List</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>


				<!-- Modal body -->
				<div class="ShowProduct modal-body">

					<table class="table">
						<thead>
							<tr>
								<th>Sr No</th>
								<th>Product Name</th>
								<th>Product Quantity</th>
								<th>Product_Discount</th>
								<th>Product_price</th>
								<th>Product_Description</th>
								<!-- <th>Description</th> -->
							</tr>
						</thead>

						<tbody>
							<%
							//Connection conn = null;
							String query12 = "SELECT  `product_name`,  `product_Quantity`, `product_Discount`, `product_price`, `product_description`FROM `products`";
							/* Statement st=null; */
							//String name="";
							int i1 = 1;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query12);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									//System.out.println(va);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>
							<tr>
								<td><%=i1%></td>
								<td><%=rs.getString("product_name")%></td>
								<td><%=rs.getString("product_Quantity")%></td>
								<td><%=rs.getString("product_Discount")%></td>
								<td><%=rs.getString("product_price")%></td>
								<td><%=rs.getString("product_description")%></td>
								<%-- <td><%=rs.getString("product_name")%></td> --%>
								<%-- <td><%=rs.getString("categories_description") %></td> --%>
							</tr>
							<%
							i1 = i1 + 1;
							}
							%>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>

	<!-- End Show Product -->


	<!-- model coding for adding catogary -->

	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modifieName">
					<div>Adding Catogary</div>
				</div>

				<div class="inputfields">
					<form action="AddCat" method="post">
						<div class="headingName ">
							<div class="">Enter The Product Catogary</div>
							<div class="catin">
								<input type="text" name="addCat"
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>
							<div class="catd ">
								<div class="">Enter The Product Catogary Description</div>
								<div>
									<input type="text" name="CatDes"
										style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none">
								</div>
							</div>
							<div class="catshow">
								<div>
									<a href="" data-bs-toggle="modal" data-bs-target="#catlists">Show
										Exiting Catogary</a>
								</div>
							</div>
							<div class="subgo1">
								<button class="button" type="submit" name="action"
									value="submit">SUBMIT</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- start Add Sub-CAtogary -->

	<div class="modal" id="EnterSubCat">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modifieName">
					<div>Adding Sub Catogary</div>
				</div>

				<div class="inputfields">
					<form action="AddCat" method="post">
						<div class="headingName ">
							<div>
								<label for="Category" class="form-label">Select
									Category:</label>

								<%
								//Connection conn=null; 
								String query19 = "SELECT `categories_id`, `categories_name`  FROM `product_categories` ";

								/* Statement st=null; */
								/* String name; */
								//int va;
								try {

									Class.forName("com.mysql.cj.jdbc.Driver");
									conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
									PreparedStatement st = conn.prepareStatement(query19);
									ResultSet rs = st.executeQuery();
									
								%><select name="SubCatId" id="#catsMenu"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-size: large; font-family: corbel;">

									<%
									while (rs.next()) {
										//va=rs.getInt("state_id");
										//System.out.println(va);
										//name =rs.getString("state_name");
										//System.out.println(name);
									%>


									<option
										style="color: darkblack; text-align: center; font-weight: bold;"
										value="<%=rs.getInt("categories_id")%>">
										<%=rs.getString("categories_name")%></option>


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


							</div>
							<div class="" style="margin-top: 12px">Enter The Name of
								Sub Catogary</div>
							<div class="catin">
								<input type="text" name="EnterSubCAtN"
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>

							<div class="catshow">
								<div>
									<a href="" data-bs-toggle="modal" data-bs-target="#catlists">Show
										Exiting Catogary</a>
								</div>
							</div>
							<div class="subgo1">
								<button class="button" type="submit" name="action"
									value="addsubscats">SUBMIT</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- End Add Sub-Catogary -->

	<!-- Start Show Perfect Product -->
	<div class="modal" id="Showalltypesproducts">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Modal Heading</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Modal body..</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>

	<!-- End Show Perfect Product -->


	<!-- ADD Product Image -->
	<div class="modal" id="AddImage" aria-hidden="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modifieName">
					<div>Adding Product Imgae</div>
				</div>

				<div class="inputfields">
					<form action="AddCat" method="post" enctype="multipart/form-data">
						<div class="headingName ">
							<div class="main-body-category ">
								<label for="Category" class="form-label">Select Product
									Name:</label>

								<%
								//Connection conn=null; 
								String query2 = "SELECT product_id,product_name FROM `products` ";

								/* Statement st=null; */
								/* String name; */
								int va;
								try {

									Class.forName("com.mysql.cj.jdbc.Driver");
									conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
									PreparedStatement st = conn.prepareStatement(query2);
									ResultSet rs = st.executeQuery();
									
								%><select name="product_id" id="#catsMenu"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-size: large; font-family: corbel;">

									<%
									while (rs.next()) {
										//va=rs.getInt("state_id");
										//System.out.println(va);
										//name =rs.getString("state_name");
										//System.out.println(name);
									%>


									<option
										style="color: darkblack; text-align: center; font-weight: bold;"
										value="<%=rs.getInt("product_id")%>">
										<%=rs.getString("product_name")%></option>


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



							</div>
							<div class="catd ">
								<div class="">Choose Your Product Image</div>
								<div>
									<input type="file" name="SelectImg"
										style="width: 420px; border: none; color: orange; border-bottom: 2px solid black; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none">
								</div>
							</div>
							<div class="catshow">
								<div>
									<a href="" data-bs-toggle="modal" data-bs-target="#catlists">Show
										Exiting Product Image</a>
								</div>
							</div>
							<div class="subgo1">
								<button class="button" type="submit" name="action"
									value="addingimages">SUBMIT</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- End ADD Product Image -->

	<!-- Start Show SUb Cat details -->
	<div class="modal" id="ShowSubCAt">
		<div class="modal-dialog  ">
			<div class="catl modal-content ">

				<!-- Modal Header -->

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Sub Catogary List</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>


				<!-- Modal body -->
				<div class="modal-body">

					<table class="table">
						<thead>
							<tr>
								<th>Sr No</th>
								<th>Sub Catogary Name</th>
								<!-- <th>Description</th> -->
							</tr>
						</thead>

						<tbody>
							<%
							//Connection conn = null;
							String query97 = "SELECT  `sub_categories_name`  FROM `sub_categories`";
							/* Statement st=null; */
							//String name="";
							int i97 = 1;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query97);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									//System.out.println(va);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>
							<tr>
								<td><%=i97%></td>
								<td><%=rs.getString("sub_categories_name")%></td>
								<%-- <td><%=rs.getString("categories_description") %></td> --%>
							</tr>
							<%
							i97 = i97 + 1;
							}
							%>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>

	<!-- End Show Sub Cat details -->

	<!-- Adding of Brand -->

	<div class="modal" id="myBrand">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modifieName">
					<div>Adding Brand Name</div>
				</div>

				<div class="inputfields">
					<form action="AddCat" method="post">
						<div class="headingName ">
							<div class="">Enter The Brand Name</div>
							<div class="catin">
								<input type="text" name="TypeBrandName"
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>
							<div class="catd ">
								<div class="">Enter The Brand Description</div>
								<div>
									<input type="text" name="BrandDespt"
										style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none">
								</div>
							</div>
							<div class="catshow">
								<div>
									<a href="" data-bs-toggle="modal" data-bs-target="#brandshow">Show
										Exiting Brand</a>
								</div>
							</div>
							<div class="subgo1">
								<button class="button" type="submit" name="action"
									value="addingbrand">SUBMIT</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Ending of adding of Brand -->
	<!-- start show brand -->

	<div class="modal" id="brandshow">
		<div class="modal-dialog  ">
			<div class="catl modal-content ">

				<!-- Modal Header -->

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Show Brand List</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>


				<!-- Modal body -->
				<div class="modal-body">

					<table class="table">
						<thead>
							<tr>
								<th>Sr No</th>
								<th>Brand Name</th>
								<!-- <th>Description</th> -->
							</tr>
						</thead>

						<tbody>
							<%
							//Connection conn = null;
							String query3 = "SELECT * FROM `product_brand` ";
							/* Statement st=null; */
							//String name="";
							int j = 1;
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query3);
								ResultSet rs = st.executeQuery();
								

								while (rs.next()) {
									//va=rs.getInt("state_id");
									//System.out.println(va);
									//name =rs.getString("state_name");
									//System.out.println(name);
							%>
							<tr>
								<td><%=j%></td>
								<td><%=rs.getString("brand_name")%></td>
								<%-- <td><%=rs.getString("categories_description") %></td> --%>
							</tr>
							<%
							j = j + 1;
							}
							%>
							<%
							st.close();
							conn.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>


	<!-- End show brand -->

	<!-- ADD PRODUCT model -->


	<div class="modal" id="myModal1">
		<div class="mama modal-dialog 	">
			<div class="modal-content">
				<div class="modal-header justify-content-center">
					<h4 class="modal-title1"
						style="font-weight: bold; text-shadow: 0px 2px 5px red; font-size: 32px;">Add
						Products</h4>

				</div>
				<form action="AddCat" method="post">
					<div class="modal-body ">
						<div class="main-body-category ">
							<label for="Category" class="form-label">Select
								Sub-Category:</label>

							<%
							//Connection conn=null; 
							String query1 = "SELECT `sub_categories_id`, `sub_categories_name`  FROM `sub_categories` ";

							/* Statement st=null; */
							/* String name; */
							//int va;
							try {

								Class.forName("com.mysql.cj.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
								PreparedStatement st = conn.prepareStatement(query1);
								ResultSet rs = st.executeQuery();
								
							%><select name="subcatids" id="#catsMenu"
								style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-size: large; font-family: corbel;">

								<%
								while (rs.next()) {
									//va=rs.getInt("state_id");
									//System.out.println(va);
									//name =rs.getString("state_name");
									//System.out.println(name);
								%>


								<option
									style="color: darkblack; text-align: center; font-weight: bold;"
									value="<%=rs.getInt("sub_categories_id")%>">
									<%=rs.getString("sub_categories_name")%></option>


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



						</div>
						<div class="modal-body ">
							<div class="main-body-category ">
								<label for="Category" class="form-label">Select Product
									Brand:</label>

								<%
								//Connection conn=null; 
								String query11 = "SELECT `brand_id`, `brand_name` FROM `product_brand` ";

								/* Statement st=null; */
								/* String name; */
								//int va;
								try {

									Class.forName("com.mysql.cj.jdbc.Driver");
									conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oneclick", "root", "");
									PreparedStatement st = conn.prepareStatement(query11);
									ResultSet rs = st.executeQuery();
									
								%><select name="ProductBrandId" id="#catsMenu"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-size: large; font-family: corbel;">

									<%
									while (rs.next()) {
										//va=rs.getInt("state_id");
										//System.out.println(va);
										//name =rs.getString("state_name");
										//System.out.println(name);
									%>


									<option
										style="color: darkblack; text-align: center; font-weight: bold;"
										value="<%=rs.getInt("brand_id")%>">
										<%=rs.getString("brand_name")%></option>


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



							</div>

							<div class="main-body mt-3">
								<label for="product-title" class="form-label">Product
									Name:</label> <input type="text" name="product-name"
									class="form-contorl-1"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-family: arial;">

							</div>

							<!-- <div class="main-body-img mt-3">
                                <label for="product-img" class="form-label">Product Img:</label>
                                <input type="file"name="product-img" class="form-contorl-1" style="width: 461px; border: none; border-bottom: 2px solid red; outline: none;
                                background-color: #f1f1f1; font-family:arial;" >
                            </div> -->


							<div class="main-body-price mt-3">
								<label for="product-price" class="form-label">Product
									Price:</label> <input type="number" name="product-price"
									class="form-contorl-1"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-family: arial;">
							</div>

							<div class="main-body-price mt-3">
								<label for="product-price" class="form-label">Price
									DisCount:</label> <input type="number" name="productPriceDiscount"
									class="form-contorl-1"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-family: arial;">
							</div>


							<div class="main-body-quant mt-3">
								<label for="product-quantity" class="form-label">Product
									Quantity:</label> <input type="number" name="product-quantity"
									class="form-contorl-1"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-family: arial;">
							</div>

							<div class="" style="margin-top: 12px">Enter Product
								Warranty</div>
							<div class="catin">
								<input type="text" name="ProductWarranty" required
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>
							<div class="" style="margin-top: 12px">Enter Weight Of
								Product</div>
							<div class="catin">
								<input type="text" name="ProductWeight" required
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>
							<div class="" style="margin-top: 12px">Enter Product Code</div>
							<div class="catin">
								<input type="text" name="ProductCode" required
									style="width: 420px; border: none; border-bottom: 2px solid red; background-color: #f1f1f1; font-family: corbel; font-size: 19px; outline: none;">
							</div>


							<div class="main-body mt-3">
								<label for="product-discription" class="form-label">Product
									Discription:</label>
								<textarea rows="3" class="form-contorl-1"
									name="ProductDesciption"
									style="width: 461px; border: none; border-bottom: 2px solid red; outline: none; background-color: #f1f1f1; font-family: arial;"></textarea>

							</div>


						</div>

						<div class="modal-footer justify-content-center ">
							<button class="button" type="submit" name="action"
								value="addingproduct">SUBMIT</button>
						</div>
				</form>
			</div>
		</div>

	</div>
	<!-- End of ADD Products -->


</body>

</html>