<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
<link rel="stylesheet" href="header.css">
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

        <div class="container">
          <h1 class="text-center  orders" style="color: red;">Orders</h1>
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
                <td>1.</td>
                <td>#001</td>
                <td>12/12/2022</td>
                <td>Ram Gopal Varma</td>
                <td>#123456</td>
                <td>12234568</td>
                <td>123@gmail.com</td>
                <td>abcd,sfdf
                  ffasfas,
                  asfasfasf,
                  asfasffasfasf-0000001
                </td>
                <td class="progress " style="color: blue;">Progress</td>
                <td><button class="btn btn-warning" onclick="myFunction()">View Order </button></td>
              </tr>
              <tr>
                <td>1.</td>
                <td>#001</td>
                <td>01/01/2001</td>
                <td>Ram Gopal Varma</td>
                <td>#123456</td>
                <td>12234568</td>
                <td>123@gmail.com</td>
                <td>abcd,sfdf
                  ffasfas,
                  asfasfasf,
                  asfasffasfasf-0000001
                </td>
                <td class="progress " style="color: blue;">Progress</td>
                <td><button class="btn btn-warning" onclick="myFuntion()">View Order </button></td>
              </tr>
     
              <tr>
                <td>1.</td>
                <td>#001</td>
                <td>10/10/2001</td>
                <td>Ram Gopal Varma</td>
                <td>#123456</td>
                <td>12234568</td>
                <td>123@gmail.com</td>
                <td>abcd,sfdf
                  ffasfas,
                  asfasfasf,
                  asfasffasfasf-0000001
                </td>
                <td class="progress " style="color:blue;">Progress</td>
                <td><button class="btn btn-warning" onclick="myFunction()">View Order </button></td>
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






