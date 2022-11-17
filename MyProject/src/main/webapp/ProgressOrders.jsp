<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" href="img/logo/one.jpeg" />
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="CSS/header.css">
<!-- <link rel="stylesheet" href="CSS/order_page.css"> -->
</head>
<body>

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
	</div>




	<div class="main">

		<div class="container">
			<h1 class="text-center order-details" style="color: red">
				Order <span style="color: black">details</span>
			</h1>
			<div class="customer_details">
				<h2 class="customer-detail" style="color: red;">
					Customer <span style="color: black;">details</span>
				</h2>
				<table class="table table-striped">

					<tr>
						<th>Customer Id :</th>
						<td>2</td>
					</tr>
					<tr>
						<th>Name</th>
						<td>vishalkumar gupta</td>
					</tr>
					<tr>
						<th>Mobile no.</th>
						<td>8306526686</td>
					</tr>
					<tr>
						<th>Email</th>
						<td>guptavishal7676@gmail.com</td>
					</tr>
				</table>

			</div>
			<h2 class="address" style="color: red;">
				Shipping <span style="color: black;">Address : </span>
			</h2>
			<span class="Customer_address">1 aniket part society, ramol, ahmedabad, gujarat -382449</span>


			<div class="product_details">

				<h1 class="product-detail" style="color: red;">
					Product <span style="color: black;">details</span>
				</h1>
				<table class="table table-striped ">
					<tr>
						<th style="width:99px">Order Id :</th>
						<td style="width:30%">1</td>
						<th style="width:170px">Payment mode :</th>
						<td style="width:20%">COD</td>
						<th>Payment status :</th>
						<td class="progess" style="color: green;">Pending</td>
					</tr>
				</table>
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-center" style="width:auto">serial no.</th>
							<th class="text-left">Product name</th>
							
							<th class="text-left">price</th>
							<th class="text-right">Quantity</th>
							<th class="text-right">OFF</th>
							<th class="text-center">Total price</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center" style="width:auto">1</td>
							<td class="text-left" style="width:auto">Bosch Gbm 350 Drill </td>
							
							<td class="text-left">2028</td>
							<td class="text-right">1</td>
							<td class="text-right">20%</td>
							<td class="text-center">1622.40/-</td>
						</tr>
											</tbody>
				</table>

				<h5 class="total-price text-right font-weight-bold "
					style="color: red;">
					Total Price : <span style="color: black;">1622.40/-</span>
				<br><br><button style="width:82px">Generate Bill</button>
				</h5>
				


			</div>
		</div>


	</div>

</body>
</html>