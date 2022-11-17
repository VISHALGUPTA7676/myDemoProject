<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%> 
     <%@ page import="java.util.*" %>
     <%@page import="java.sql.*"%>
     <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   
    
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
 
 <%-- <del>jkwe</del>state 	<select name="state1" id="hekk" >
 
 		<c:forEach var="person" items="${Arrayss}">
				
			<option value=""> ${person.getProduct_image()}</option>
		</c:forEach>	
		</select>
 --%>				
<%-- 	
<% ArrayList<Product> p=new ArrayList<Product>();
	ProductDao pd=new ProductDao();
	p=pd.allProdo();

	Product name=new Product();
		for(int i=0;i<p.size();i++)
		{
			name=p.get(i);
			out.print(name.getProduct_image());
			out.print(" "+name.getProduct_name());
		}
 %>
 --%>
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
						<input type="text" style="width: 100%; font-weight: bold;"
							readonly name="ProName"
							value="${buygo.getProduct_name()}">
					</h3>
					<h2>
						<i class="fa fa-inr" aria-hidden="true"></i> &nbsp;${buygo.getProduct_price()}
						&nbsp;&nbsp;<i class="fa " aria-hidden="true"
							style="font-size: 16px">${buygo.getProduct_Discount()}
							/-OFF</i>
					</h2>
					<label >Select The Quntity</label>
						  <select name="Quntity" >
						    <option value="volvo">1</option>
						    <option value="saab">2</option>
						    <option value="opel">3</option>
						    <option value="audi">4</option>
						  </select>
					<button class="buy-btn " style="border-radius: 22px;" type="submit"
						name="action" value="chechout">CheckOut</button>
					<div class="col-sm-12">
						<h3 class="mt-3">Product Specifications</h3>
						<table class="table f-size-12 no-margin border-t-d border-b-d">
							<tr>
								<td class="text-grey f-size-9 lh-15">Brand</td>
								<td class="f-size-13 lh-15"><input type="text"
									style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
									readonly name="ProBrand"
									value="${buygo.getBrand_name()}"></td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Warranty</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
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
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
											readonly name="ProSubCat"
											value="${buygo.getSub_categories_name}">
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Weight</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
											readonly name="ProWei"
											value="${buygo.getProduct_weight()}">
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-grey f-size-13 lh-15">Item Code</td>
								<td class="f-size-13 lh-15">
									<div>
										<input type="text"
											style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
											readonly name="ProCo"
											value="${buygo.getProduct_code()}">
									</div>
								</td>
							</tr>

						</table>
						<h4 class="mt-5">Product description</h4>
						<span><input type="text"
							style="font-weight: bold; height: 100%; font-size: 12px; width: 100%"
							readonly name="ProDesc"
							value="${buygo.getProduct_description}"></span>


					</div>
				</div>
			</div>
		</section>


		
	</c:forEach>
	</form>
  
 <input type="number" min="1">
<select name="state1" id="hekk" >

		
 
		<c:forEach var="person" items="${BuyNoWDetails}">
				
			<option value=""> ${person.getProduct_image()}</option>
			
		</c:forEach>	
		</select>

 
<%--  <%@page import="com.dao.UserDao,com.bean.State,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 --%></body>
</html>