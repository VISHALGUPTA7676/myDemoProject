 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>OneClick E_commerce</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>OneClick E-Commerce</title>
	<link rel="stylesheet" href="CSS/CatDropDown.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="CSS/style1.css">
	<link rel="stylesheet" href="CSS/profile.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="shortcut icon" href="img/logo/one.jpeg" />
</head>

<body>
	<%@ include file="CommanComponent/Header.jsp"%>
	<!--Product detail page-->
	<form action="AddCat" method="post">
		
		<c:forEach var="buygo" items="${BuyNoWDetails}">
		<section class="container sproduct my-5 pt-5">
			<div class="row mt-5">
				<div class="col-lg-5 col-md-12 col-12">
					<img class="img-fluid w-100 pb-1"
						src="images/${buygo.getProduct_image()}" name="ImN"
						id="MainImg" alt="">
 
					<div class="small-img-group">
						<div class="small-img-col img-fluid w-100">
							<img src="images/${buygo.getProduct_image()}" width="
								100%" class="small-img" alt="">
						</div>
						<div class="small-img-col">
							<img src="images/${buygo.getProduct_image()}" width="
								100%" class="small-img" alt="">
						</div>
						<div class="small-img-col">
							<img src="images/${buygo.getProduct_image()}" width="
								100%" class="small-img" alt="">
						</div>
						<div class="small-img-col">
							<img src="images/${buygo.getProduct_image()}" width="
								100%" class="small-img" alt="">
						</div>
					</div> 

				</div>

				<div class="col-lg-6 col-md-12 col-12">

					<h3 class="py-4 text-fluid">
						<input type="text" style="width: 100%; font-weight: bold;background-color:#eee"
							readonly name="ProName"
							value="${buygo.getProduct_name()}">
					</h3>
					<h2>
						<i class="fa fa-inr" aria-hidden="true"></i> &nbsp;<input type="text" style="width: 200px;font-size:32px;background-color:#eee" readonly name="productPrices" value="${buygo.getProduct_price()}"> 
						 
						
						&nbsp;&nbsp;
						<input type="text" style="width: 50px;background-color:#eee" readonly  name="ProOff1" value="${buygo.getProduct_Discount()}">% /-OFF
						<input type="text" style="width: 50px;background-color:#eee;color:#eee" readonly  name="ProdIdsOne" value="${buygo.getProduct_id()}">
						
					</h2>
					
						  <select name="Proqunt" style="width:30px;height:23px" >
						    <option value="1">1</option>
						    <option value="2">2</option>
						    <option value="3">3</option>
						    <option value="4">4</option>
						    <option value="5">5</option>
						    <option value="6">6</option>
						  </select>
					<button class="buy-btn " style="border-radius: 22px;" type="submit"
						name="action" value="chechoutOne">CheckOut</button>
					<div class="col-sm-12">
						<h3 class="mt-3">Product Specifications</h3>
						<table class="table f-size-12 no-margin border-t-d border-b-d">
							<tr>
								<td class="text-grey f-size-9 lh-15">Brand</td>
								<td class="f-size-13 lh-15"><input type="text"
									style="font-weight: bold; height: 100%; font-size: 12px; width: 100%;background-color:#eee"
									readonly name="ProBrand"
									value="${buygo.getBrand_name()}"></td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Warranty</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100% ;background-color:#eee"
											readonly name="ProWarr"
											value="${buygo.getProduct_warranty()}">
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Category</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%;background-color:#eee"
											readonly name="ProSubCat"
											value="${buygo.getSub_categories_name()}">
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Weight</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%;background-color:#eee"
											readonly name="ProWei"
											value="${buygo.getProduct_weight()} KG">
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Item Code</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%;background-color:#eee"
											readonly name="ProCo"
											value="${buygo.getProduct_code()}">
									</div>
								</td>
							</tr>

						</table>
						<h4 class="mt-5">Product description</h4>
						<span style="font-weight: bold; height: 100%; font-size: 10px;">${buygo.getProduct_description()}</span>


					</div>
				</div>
			</div>
		</section>


		
	</c:forEach>
	</form>
	<section class="footer">

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

	<script>
		var MainImg = document.getElementById('MainImg');
		var smallimg = document.getElementsByClassName('small-img');

		smallimg[0].onclick = function() {
			MainImg.src = smallimg[0].src;
		}

		smallimg[1].onclick = function() {
			MainImg.src = smallimg[1].src;
		}

		smallimg[2].onclick = function() {
			MainImg.src = smallimg[2].src;
		}

		smallimg[3].onclick = function() {
			MainImg.src = smallimg[3].src;
		}
	</script>
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

	<!-- custom js file link  -->
	<script src="JavaScript/script1.js"></script>
	<script src="JavaScript/cart.js"></script>

</body>

</html>