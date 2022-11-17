<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="payment.css">
	<link rel="shortcut icon" href="img/logo/one.jpeg" />
<title>OneClick E-Commerce</title>
<link rel="stylesheet" href="CSS/style.css">
 <link rel="stylesheet" href="CSS/payment.css">
<link rel="stylesheet" href="CSS/CatDropDown.css">
</head>
<body>
	<%@ include file="CommanComponent/Header.jsp"%>

<div class="container" style="margin-top:100px">
        <div class="card  mt-5 ">
            <div class="card-header border">
            
            <h4 class="card-title text-center "> Payment</h4>
            </div>
                <!-- <div class="row"> -->
                    <!-- <div class="col"> -->
                        <div class="card-body ">
                            <table class="table table-striped bg-light " >
                                <tr><% HttpSession sessi=request.getSession(); %>
                                    <th>Total Payable Amount :</th><td class="text-right"><% double price = (double) session.getAttribute("BuyOneProductPrice");
                                    				out.print(price);%>
                                    </td>
                                </tr>
                                <tr>
                                    
                                </tr>
                                <tr>
                                    <th>GST Included :</th><td class="text-right">10% </td>
                                
                                </tr>
                            </table>
                        </div>
                
                    
                
            </div>
            <div class="card-footer border">
               <table class="table">
                <tr>
                    <th>Total Price   :</th><td class="text-right"><% double fprice = (double) session.getAttribute("BuyOneProductOFF");
                                    				out.print(fprice);%></td>
                
                </tr>
            </table> 
        </div>
     
        <div class="pays" style="margin-top: 10px; margin-bottom: 10px;">
            <div class="row " style="display:inline-block;">
                

                    <label class="font-weight-bold" style="font-size: large;">Choice Payment Mode : </label> 
                    <!-- <input type="radio" name="Online"  onclick="show1()" class="cod">  -->
                    <!-- <label for="cash" style="font-size:large;">Cash on Delievery</label> -->
                    <!-- <input type="radio" name="Online" onclick="show2()" class="online">  -->
                    <!-- <label for="cash" style="font-size:large;">Online Payment</label> -->
                    <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadioInline1"  onclick="show1()"  name="customRadioInline1" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline1">Cash on Delievery</label>
                      </div>
                      <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio"  id="customRadioInline2" onclick="show2()" name="customRadioInline1" class="custom-control-input">
                        <label class="custom-control-label" for="customRadioInline2">Online Payment</label>
                      </div>

            </div>

            <div class="forms " id="hideMe" style="display:none">
                <form action="" >
                   
                       <div class="form-group ">
                         <label class="font-weight-bold text-decoration-none">Enter Credit/Debit Card number: </label>
                         <input type="number" class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="1234-2341-3412">
                         
                       </div>
                       <div class="row">
                           <div class="col">
                               <div class="form-group-2 ">
                                   <label for="card-details"class="font-weight-bold">Expire Date  : </label>
                                   <input type="text" class="form-control " id="card-details" placeholder="MM/YY">
                               </div>
                           </div>
                           <div class="col">
                               <div class="form-group-2">
                                   <label for="Card-details" class="font-weight-bold">CVV number : </label>
                                   <input type="number" class="form-control " id="exampleInputPassword1" placeholder="...">
                               </div>    
                           </div>
                       </div>
                       <div class="form-group ">
                           <label class="font-weight-bold">Enter Card holder name : </label>
                           <input type="text" class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Card holder name ">
                           
                         </div>

                     
                </form>
           </div>


             </div> 
             		<form action="AddCat" method="post">
                     <div class="mx-auto mt-3" style="width: 200px;">
                        <button class="btn btn-outline-primary" name="action" value="finalpayoutone" style="width:auto;border-radius:8px">Submit</button>
                      </div>
          			</form>
            </div>
            <script type="text/javascript">

                function show1()
                {
                     var block1 = document.getElementById('hideMe');
                     if(block1.style.display == "block")
                            {
                                block1.style.display = "none";
                            }

                }

            function show2()
                {
                     var block1 = document.getElementById('hideMe');
                        if(block1.style.display == "none")
                            {
                                block1.style.display = "block";
                            }
                            else
                            {
                                block1.style.display = "";
                            }
                }
            </script>

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
	

</body>
</html>














