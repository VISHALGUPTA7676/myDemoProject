<%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- link external css -->
<link rel="stylesheet" href="CSS/CrudOnPro.css">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://kit.fontawesome.com/db80c03651.js"
	crossorigin="anonymous"></script>
<link rel="shortcut icon" href="img/logo/one.jpeg" />

<title>Admin Panel</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="Stylesheet" href="CSS/productshowtbl.css">
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body style="margin: 0px; padding: 0px">

	<div class="main_Header_fileNaMe">
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
	</div>
	
	<div class="contents111"
		style="background-color: #ffffff; padding-top: 65px">
		<div class="table-responsive" style="background-color: #ffffff">
			<h2 class="product-header111"
				style="color: red; box-shadow: 2px red; padding-top: 20px; font-size: 32px; color: black; text-align: center; font-weight: bold; text-shadow: 0px 2px 5px red; font-weight: bold;">Product
				show page</h2>
				<% String name5 = (String) session.getAttribute("RemovePro");
					if(name5!=null){
					%><H3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
					out.print(name5);
					session.removeAttribute("RemovePro");
					session.invalidate();}%>
				</H3>
			<%
			ArrayList<Product> p = new ArrayList<Product>();
			ProductDao pd = new ProductDao();
			p = pd.fetchAllProductForCrud();

			Product name1 = new Product();
			%>


			<table class="table table-striped table-bordered"
				style="overflow-x: auto; margin-left: 09px; background-color: white; text-align: center; width: 100%">
				<thead>
					<tr>
						<th>SR No</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Price</th>
						<th>Product Quantity</th>
						<th>Product Discount</th>
						<th>Total No Of Sell</th>
						<th>Availble Product</th>
						<th>Product Warranty</th>
						<th>Product Weight</th>
						<th>Product Code</th>
						<th>Product Brand</th>
						<th>Product Sub Category</th>
						<th colspan="2" style="text-align: center;">Action</th>

					</tr>
				</thead>

				<tbody>
					<%
						for (int i = 0; i < p.size(); i++) {
							name1 = p.get(i);
						%><form action="AddCat" method="post">
					<tr>
						<td><input type="text" readonly name="proId"
							value="<%out.print(name1.getProduct_id());%>"
							style="color: #f1f1f1; border: none; background-color: white; width: .001px">
							<%
								out.print(i + 1);
								%></td>
						<td><div style="width: 300px">
								<%
									out.print(name1.getProduct_name());
									%>

							</div>
						</td>
						<td><div style="width: 500px; text-align: left">
								<%
									out.print(name1.getProduct_description());
									%>
							</div>
						</td>
						<td>
							<%
								out.print(name1.getProduct_price());
								%>
						</td>
						<td>
							<%
								out.print(name1.getProduct_Quntity());
								%>
						</td>
						<td>
							<%
								out.print(name1.getProduct_Discount() + "%");
								%>
						</td>
						<td>
							<%
								out.print(name1.getTotal_number_of_product_sell());
								%>
						</td>
						<td>
							<%
								out.print(name1.getTotal_available_product());
								%>
						</td>
						<td>
							<%
								out.print(name1.getProduct_warranty());
								%>
						</td>
						<td>
							<%
								out.print(name1.getProduct_weight() + "KG");
								%>
						</td>
						<td>
							<%
								out.print(name1.getProduct_code());
								%>
						</td>
						<td>
							<%
								out.print(name1.getBrand_name());
								%>
						</td>
						<td>
							<%
								out.print(name1.getSub_categories_name());
								%>
						</td>
						<td><button class="btn btn-success" name="action"
								value="update" type="submit">Update</button></td>
						<td><button class="btn btn-danger" name="action"
								value="delete" type="submit">Delete</button></td>


					</tr>
					</form>
					<%
						}
						%>
				</tbody>
			</table>

		</div>



	</div>

</body>

</html>