
<%
if (session.getAttribute("USER") == null) {
	response.sendRedirect("index1.jsp");
}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>OneClick E_commerce</title>
<meta charset="UTF-8">
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="shortcut icon" href="img/logo/one.jpeg" />
</head>

<body>
	<%@ include file="CommanComponent/Header.jsp"%>
	<div class="mt-3" style="padding-top: 90px; text-align: center">
	<form action="AddCat" method="post">
		<h2
			style="color: red; box-shadow: 2px red; font-size: 32px; color: black; text-align: center; font-weight: bold; text-shadow: 0px 2px 5px red;">
			MY &nbsp; CART</h2>
		<h1 style="text-align: left" ><%String name = (String) session.getAttribute("REMOVECART");
				if (name != null) {
					%><strong class="alert alert-danger"><%out.print(name);%></strong><%
					session.removeAttribute("REMOVECART");
					
				} %></h1>
		<table class="table" style="margin-top: 12px; background-color: white">

			<tr style="width: 25px; border: 2px">
				<th style="width: 0%;"></th>
				<th style="width: 0%"></th>
				<th	style="width: 0%; font-size: 16px; font-family: corbel; font-weight: bold;">OFF/-%</th>
				<th style="width: 9%; font-size: 16px; font-family: corbel;">Price</th>
				<th style="width: 0%; font-size: 16px; font-family: corbel;">Quantity</th>
				<th	style="width: 0%; font-size: 16px; font-family: corbel; padding-left: 12px">Total Price</th>
				<th></th>
			</tr>
			<%
			ArrayList<Product> p = new ArrayList<Product>();
			ProductDao pd = new ProductDao();
			p = pd.myCartShow();

			Product name1 = new Product();
			for (int i = 0; i < p.size(); i++) {
				name1 = p.get(i);
			%>
			
			<form action="AddCat" method="post">
				<tr style="border: 1px">
					<td><div style="width: 200px; height: 150px; background-color: white"> <img src="images/<%out.print(name1.getProduct_image());%>" class="image" style="width: 140px" alt=""> </div> <input type="number" name="kardetailsId" value="<%out.print(name1.getKardDeatails_id());%>" readonly style="color: white; height: .1px"></td>
					<%  
						ArrayList<Integer> ProId=new ArrayList<Integer>();
						ProId.add(name1.getProduct_id());
						
					System.out.println(i);
					/* session.setAttribute("FirstProIdi", numi) */
					/* System.out.println(num0);
					
					 */
					 System.out.println(ProId);
					 session.setAttribute("ProId", ProId); 
					%>
					
					<td><div style="width: 500px; height: 150px; background-color: white; text-align: left; font-weight: bold; font-size: 10px"><%=(String) name1.getProduct_name()%><br>&nbsp;<BR><%=(String) name1.getProduct_description()%></div></td>
					<td><input type="number" value="<%=name1.getProduct_Discount()%>" class="" name="DiscPro" id="off<%=i%>" oninput="myFunction<%=i%>()" readonly style="font-size: 15px; font-weight: bold; width: 88px"></td>
					<td><input type="number" value="<%=name1.getProduct_price()%>" class="" name="Pprice" id="priceP<%=i%>" oninput="myFunction<%=i%>()" readonly style="font-size: 15px; width: 100px; font-weight: bold"></td>
					<td><input type="number" min=1 value="1" id="qunt<%=i%>" onchange="myFunction<%=i%>()" name="orderquntity" style="width: 62px; height: 30px; font-weight: bold; font-size: 14px; border-style: solid;"></td>
					<td><input type="number" value="" id="sho<%=i%>" 	name="totalPrice<%=i%>" onclick="myFunctionShowTotal<%=i%>()" style="width: 99px; height: 30px; font-weight: bold; font-size: 18px;" readonly></td>
					
					<td style="width: 62px;"><button class="btn" style="width: auto" value="removecart" type="submit" name="action">Remove</button></td>
				</tr>
			</form>

			<%
			}
			%>
		</table>
		
			<div>
				<input type="number" value="" id="shaw"
					style="width: 100%; text-align: right; font-size: 22px; padding-right: 12px; font-weight: bold" name="tatalpay"
					readonly><input type="number" ID="first" name="F1" style="height:.001px;color: white; " readonly><input type="number" name="F2" ID="seco" style="height:.001px;color: white; " readonly>
							<input type="number" ID="fPrice" name="Fprice" style="height:.001px;color: white; " readonly>	<input type="number" ID="secoP" name="Sprice" style="height:.001px;" readonly>
			</div>
			<div>
				<button class="btn" type="submit" name="action" value="checkout">CheckOut</button>
			</div>
		</form>
	</div>

	<script>function myFunction0()
{
	
	ofs = document.getElementById("off0").value;
    qunt = document.getElementById("qunt0").value;
    pprice = document.getElementById("priceP0").value;
    
    let result=pprice * qunt;
    let fina= (result * ofs)/100;
	

    
    document.getElementById("sho0").value = result - fina;
    document.getElementById("fPrice").value = result - fina;
    document.getElementById("first").value = qunt;
    
}
</script>
	<script>function myFunction1()
{
	
	ofs = document.getElementById("off1").value;
    qunt = document.getElementById("qunt1").value;
    pprice = document.getElementById("priceP1").value;
    let result=pprice * qunt;
    let fina= (result * ofs)/100;
    document.getElementById("sho1").value = result - fina;
    document.getElementById("secoP").value = result - fina;
    document.getElementById("seco").value = qunt;
    
}

function myFunctionShowTotal1()
{
	
	ofs = parseFloat(document.getElementById("sho0").value); 
     qunt = parseFloat(document.getElementById("sho1").value);
    let fi=(ofs + qunt)*1;

 	

    
    document.getElementById("shaw").value = fi;
    
}
function myFunctionShowTotal0()
{
	
	ofs = parseFloat(document.getElementById("sho0").value);     
    document.getElementById("shaw").value = ofs;
    
}

</script>

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