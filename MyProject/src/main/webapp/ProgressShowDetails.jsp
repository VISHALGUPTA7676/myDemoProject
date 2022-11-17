<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   

    <script src="https://kit.fontawesome.com/db80c03651.js"
    crossorigin="anonymous"></script>
  
    <link rel="shortcut icon" href="img/logo/one.jpeg" />
<link rel="stylesheet" href="CSS/header.css">
<link rel="stylesheet" href="Order_show.css">
  

  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
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

        <div class="container" style="margin-top:49px">
          <h1 class="text-center  orders" style="color: red;">New Placed Orders</h1>
          <table class="table table-dark table-striped table-bordered">
            <thead>
                <tr>
                  <th>Serial no.</th>
                  <th>Order Id</th>
                  <th>Order date</th>
                  <th>Customer Name</th>
                  <th>Customer Id</th>
                  <th>Mobile no.</th>
                  <th>Email</th>
                  <th class="text-center"> Address</th>
                  <th>Order status</th>
                  <th>Action</th>
                </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>1</td>
                <td>26/03/2022</td>
                <td>vishalkumar gupta</td>
                <td>1</td>
                <td>8306526686</td>
                <td>guptavishal7676@gmail.com</td>
                <td>1 aniket part society, ramol, ahmedabad, gujarat -382449                </td>
                <td class="progress " style="color: blue;"> Successful Place order</td>
                <td><button class="btn btn-warning" onclick="myFunction()">Generate Bill </button></td>
              </tr>
              
              
            </tbody>
          </table>
        </div>


        <script>
          function myFunction() {
            location.replace("order_page.html")
          }
          </script>
          


 </body>
</html>






