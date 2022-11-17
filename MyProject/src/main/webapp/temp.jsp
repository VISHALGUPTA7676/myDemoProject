<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
        integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
        crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="CSS/temp.css">
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <title>ThapaCart</title>
</head>

<body>

   <!-- header section starts  -->
	<%@ include file="CommanComponent/Header.jsp" %>
		<!-- header section ends -->
	<h2 style="color: red;box-shadow: 2px red;font-size: 32px;color: black;text-align: center;font-weight: bold;text-shadow: 0px 2px 5px red;margin-top:90px"> MY &nbsp;	CART</h2>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 col-11 mx-auto">
                <div class="row mt-5 gx-3">
                    <!-- left side div -->
                    <div class="col-md-12 col-lg-8 col-11 mx-auto main_cart mb-lg-0 mb-5 shadow">
                        <div class="card p-4">
                            <h2 class="py-4 font-weight-bold">Cart (2 items)</h2>
                            <div class="row">
                                <!-- cart images div -->
                                <div
                                    class="col-md-0 col-5 mx-auto  d-flex justify-content-center align-items-center shadow product_img">
                                    <img src="img/driller/1.jpg" class="img-fluid" alt="cart img">
                                </div>




                                <!-- cart product details -->
                                <div class="col-md-7 col-11 mx-auto px-4 mt-2">
                                    <div class="row">
                                        <!-- product name  -->
                                        <div class="col-6 card-title">
                                            <h1 class="mb-4 product_name">Blue Zara Shirt</h1>
                                            <p class="mb-2">SHIRT - BLUE</p>
                                            <p class="mb-2">COLOR: BLUE</p>
                                            <p class="mb-3">SIZE: M</p>
                                        </div>
                                        <!-- quantity inc dec -->
                                        <div class="col-6">
                                            <ul class="pagination justify-content-end set_quantity">
                                                <li class="page-item">
                                                    <button class="page-link "
                                                        onclick="decreaseNumber('textbox','itemval')">
                                                        <i class="fas fa-minus"></i> </button>
                                                </li>
                                                <li class="page-item"><input type="text" name="" class="page-link"
                                                        value="0" id="textbox">
                                                </li>
                                                <li class="page-item">
                                                    <button class="page-link"
                                                        onclick="increaseNumber('textbox','itemval')"> <i
                                                            class="fas fa-plus"></i></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- //remover move and price -->
                                    <div class="row">
                                        <div class="col-8 d-flex justify-content-between remove_wish">
                                            <p><i class="fas fa-trash-alt"></i> REMOVE ITEM</p>
                                            <p><i class="fas fa-heart"></i>MOVE TO WISH LIST </p>
                                        </div>
                                        <div class="col-4 d-flex justify-content-end price_money">
                                            <h3>$<span id="itemval">0.00 </span></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <!-- 2nd cart product -->
                        <div class="card p-4">
                            <div class="row">
                                <!-- cart images div -->
                                <div
                                    class="col-md-5 col-11 mx-auto bg-light d-flex justify-content-center align-items-center shadow product_img">
                                    <img src="images/img3.png" class="img-fluid" alt="cart img">
                                </div>




                                <!-- cart product details -->
                                <div class="col-md-7 col-11 mx-auto px-4 mt-2">
                                    <div class="row">
                                        <!-- product name  -->
                                        <div class="col-6 card-title">
                                            <h1 class="mb-4 product_name">Green Zara Shirt</h1>
                                            <p class="mb-2">SHIRT - Green</p>
                                            <p class="mb-2">COLOR: Green</p>
                                            <p class="mb-3">SIZE: M</p>
                                        </div>
                                        <!-- quantity inc dec -->
                                        <div class="col-6">
                                            <ul class="pagination justify-content-end set_quantity">
                                                <li class="page-item">
                                                    <button class="page-link "
                                                        onclick="decreaseNumber('textbox1','itemval1')"> <i
                                                            class="fas fa-minus"></i> </button>
                                                </li>
                                                <li class="page-item"><input type="text" name="" class="page-link"
                                                        value="0" id="textbox1">
                                                </li>
                                                <li class="page-item">
                                                    <button class="page-link"
                                                        onclick="increaseNumber('textbox1','itemval1')"> <i
                                                            class="fas fa-plus"></i></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    
                                    <!-- //remover move and price -->
                                    <div class="row">
                                        <div class="col-8 d-flex justify-content-between remove_wish">
                                            <p><i class="fas fa-trash-alt"></i> REMOVE ITEM</p>
                                            <p><i class="fas fa-heart"></i>MOVE TO WISH LIST </p>
                                        </div>
                                        <div class="col-4 d-flex justify-content-end price_money">
                                            <h3>$<span id="itemval1">0.00 </span> </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right side div -->
                    <div class="col-md-12 col-lg-4 col-11 mx-auto mt-lg-0 mt-md-5">
                        <div class="right_side p-3 shadow bg-white">
                            <h2 class="product_name mb-5">The Total Amount Of</h2>
                            <div class="price_indiv d-flex justify-content-between">
                                <p>Product amount</p>
                                <p>$<span id="product_total_amt">0.00</span></p>
                            </div>
                            <div class="price_indiv d-flex justify-content-between">
                                <p>Shipping Charge</p>
                                <p>$<span id="shipping_charge">0.00</span></p>
                            </div>
                            <hr />
                            <div class="total-amt d-flex justify-content-between font-weight-bold">
                                <p>The total amount of (including VAT)</p>
                                <p>$<span id="total_cart_amt">0.00</span></p>
                            </div>
                            <button class="btn btn-primary text-uppercase">Checkout</button>
                        </div>
                        <!-- discount code part -->
                        <div class="discount_code mt-3 shadow">
                            <div class="card">
                                <div class="card-body">
                                    <a class="d-flex justify-content-between" data-toggle="collapse"
                                        href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                        Add a discount code (optional)
                                        <span><i class="fas fa-chevron-down pt-1"></i></span>
                                    </a>
                                    <div class="collapse" id="collapseExample">
                                        <div class="mt-3">
                                            <input type="text" name="" id="discount_code1"
                                                class="form-control font-weight-bold"
                                                placeholder="Enter the discount code">
                                            <small id="error_trw" class="text-dark mt-3">code is thapa</small>
                                        </div>
                                        <button class="btn btn-primary btn-sm mt-3"
                                            onclick="discount_code()">Apply</button>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <!-- discount code ends -->
                        <div class="mt-3 shadow p-3 bg-white">
                            <div class="pt-4">
                                <h5 class="mb-4">Expected delivery date</h5>
                                <p>July 27th 2020 - July 29th 2020</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <section class="footer">

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
    <!-- Optional JavaScript -->
    <!-- Popper.js first, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>

    <script type="text/javascript">

        var product_total_amt = document.getElementById('product_total_amt');
        var shipping_charge = document.getElementById('shipping_charge');
        var total_cart_amt = document.getElementById('total_cart_amt');
        var discountCode = document.getElementById('discount_code1');
        const decreaseNumber = (incdec, itemprice) => {
            var itemval = document.getElementById(incdec);
            var itemprice = document.getElementById(itemprice);
            console.log(itemprice.innerHTML);
            // console.log(itemval.value);
            if (itemval.value <= 0) {
                itemval.value = 0;
                alert('Negative quantity not allowed');
            } else {
                itemval.value = parseInt(itemval.value) - 1;
                itemval.style.background = '#fff';
                itemval.style.color = '#000';
                itemprice.innerHTML = parseInt(itemprice.innerHTML) - 15;
                product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) - 15;
                total_cart_amt.innerHTML = parseInt(product_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
            }
        }
        const increaseNumber = (incdec, itemprice) => {
            var itemval = document.getElementById(incdec);
            var itemprice = document.getElementById(itemprice);
            // console.log(itemval.value);
            if (itemval.value >= 5) {
                itemval.value = 5;
                alert('max 5 allowed');
                itemval.style.background = 'red';
                itemval.style.color = '#fff';
            } else {
                itemval.value = parseInt(itemval.value) + 1;
                itemprice.innerHTML = parseInt(itemprice.innerHTML) + 15;
                product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) + 15;
                total_cart_amt.innerHTML = parseInt(product_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
            }
        }


        const discount_code = () => {
            let totalamtcurr = parseInt(total_cart_amt.innerHTML);
            let error_trw = document.getElementById('error_trw');
            if (discountCode.value === 'thapa') {
                let newtotalamt = totalamtcurr - 15;
                total_cart_amt.innerHTML = newtotalamt;
                error_trw.innerHTML = "Hurray! code is valid";
            } else {
                error_trw.innerHTML = "Try Again! Valid code is thapa";
            }
        }
    </script>
</body>

</html>

