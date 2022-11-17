package com.driver;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bean.Product;
import com.bean.User;
import com.dao.ProductDao;
import com.dao.UserDao;



/**
 * Servlet implementation class ProdeuctOperation
 */
@WebServlet("/AddCat")
@MultipartConfig
public class ProdeuctOperation extends HttpServlet {
	/*
	 * private String extractfilename(Part file) { String cd =
	 * file.getHeader("content-disposition"); System.out.println(cd); String[] items
	 * = cd.split(";"); for (String string : items) { if
	 * (string.trim().startsWith("filename")) { return
	 * string.substring(string.indexOf("=") + 2, string.length()-1); } } return "";
	 * }
	 */	 
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equalsIgnoreCase("addingproduct"))
		{
			int SubCatId=Integer.parseInt(request.getParameter("subcatids"));
			System.out.println(SubCatId +"HaHAHAAAAAAAAAAAA");

			String pWarranty=request.getParameter("ProductWarranty");
			double pWeight=Double.parseDouble(request.getParameter("ProductWeight"));
			int pCode=Integer.parseInt(request.getParameter("ProductCode"));


			String Product_name=request.getParameter("product-name");
			System.out.println(Product_name);
			double Product_price=Double.parseDouble(request.getParameter("product-price"));
			System.out.println(Product_price);
			double Product_discount=Double.parseDouble(request.getParameter("productPriceDiscount"));
			System.out.println(Product_discount);
			int Product_Quntity=Integer.parseInt(request.getParameter("product-quantity"));
			System.out.println(Product_Quntity);
			String Product_Description=request.getParameter("ProductDesciption");
			System.out.println(Product_Description);
			int brand_id=Integer.parseInt(request.getParameter("ProductBrandId"));
			System.out.println(brand_id);
			ProductDao p=new ProductDao();

			if(p.checkproduct(Product_name))
			{
				HttpSession session=request.getSession();
				session.setAttribute("PE","Product is Already Exist:::)");
				//out.print("Catrgory is Already Exist:::)");
				response.sendRedirect("Dashborad.jsp");


			}
			else
			{
				Product p1=new Product();
			
				

				p1.setBrand_id(brand_id);
				System.out.println(p1.getBrand_id());
				p1.setProduct_name(Product_name);
				p1.setProduct_price(Product_price);
				p1.setProduct_Quntity(Product_Quntity);
				p1.setProduct_Discount(Product_discount);
				p1.setProduct_description(Product_Description);
				p1.setSub_categories_id(SubCatId);
				p1.setProduct_warranty(pWarranty);
				p1.setProduct_weight(pWeight);
				p1.setProduct_code(pCode);
				p1 = p.AddProduct(p1);
				p1=p.FindProductId(p1);
				p1=p.InsertProductDetails(p1);
				p.InsertDataInStockManage(p1);

				HttpSession session=request.getSession();
				session.setAttribute("PD","Product is Added");
				//out.print("Catrgory is Already Exist:::)");
				response.sendRedirect("Dashborad.jsp");

			}
		}

		else if(action.equalsIgnoreCase("submit"))
		{
			String CatName=request.getParameter("addCat");
			String CatDescription=request.getParameter("CatDes");
			//Product p=new Product();
			ProductDao po=new ProductDao();
			PrintWriter out=response.getWriter();
			//		p.setCategories_name(CatName);
			//		p.setCategories_description(CatDescription);
			//		System.out.println(p.getCategories_name());
			//		System.out.println(p.getCategories_description());
			if(po.CheckCat(CatName))
			{
				HttpSession session=request.getSession();
				session.setAttribute("CatgoryExist","Catrgory is Already Exist:::)");
				//out.print("Catrgory is Already Exist:::)");
				response.sendRedirect("Dashborad.jsp");

			}
			else
			{
				Product p=new Product();
				ProductDao po1=new ProductDao();
				p.setCategories_name(CatName);
				p.setCategories_description(CatDescription);
				System.out.println(p.getCategories_name());
				System.out.println(p.getCategories_description());
				p=po1.AddCat(p);
				HttpSession session=request.getSession();
				session.setAttribute("AddCatSuccesfully","Catgory is Added");
				response.sendRedirect("Dashborad.jsp");
				out.println("Category is Added Succesfully");

			}		


		}
		else if(action.equalsIgnoreCase("addingbrand"))
		{

			String BrandName=request.getParameter("TypeBrandName");
			String BrandDesc=request.getParameter("BrandDespt");
			ProductDao do1 =new ProductDao() ;
			Product p=new Product();
			p.setBrand_name(BrandName);
			p.setBrand_description(BrandDesc);
			p=do1.InsertBrand(p);
			HttpSession session=request.getSession();
			session.setAttribute("AddBrabdSuccesfully","Brand Name is Added");
			response.sendRedirect("Dashborad.jsp");


		}

		else if(action.equalsIgnoreCase("addingimages"))
		{
			System.out.println("IN ADD IMG");

			//			String savePath = "E:\\eclipse\\MyProject\\src\\main\\webapp\\img";
			//			/*String savePath = "C:\\Users\\user\\eclipse-workspace\\E-Commerce\\src\\main\\webapp\\images";*/
			//			File fileSaveDir=new File(savePath);
			//	        if(!fileSaveDir.exists()){
			//	            fileSaveDir.mkdir();
			//	        }
			//	        Part file1 = request.getPart("SelectImg");
			//		 	String fileName=extractfilename(file1);
			//		    file1.write(savePath + File.separator + fileName);
			//		    String filePath= savePath + File.separator + fileName ;

			int proID=Integer.parseInt(request.getParameter("product_id"));

			Part file =request.getPart("SelectImg");

			Product p=new Product();

			ProductDao do1=new ProductDao();

			p.setProduct_id(proID);

			String fileName=file.getSubmittedFileName();

			p.setProduct_image(fileName);
			if(do1.Checkimg(p))
			{
				System.out.println("Match name");

				response.sendRedirect("Dashborad.jsp");

			}
			else
			{

				System.out.println("okey");
				String savePath = "E:\\eclipse\\MyProject\\src\\main\\webapp\\images\\"+fileName;
				System.out.println(savePath);
				p=do1.InsertImage(p);
				try
				{
					FileOutputStream f=new FileOutputStream(savePath);
					InputStream ka=file.getInputStream();
					byte[] data=new byte[ka.available()];
					ka.read(data);
					f.write(data);
					f.close();
					HttpSession session=request.getSession();
					session.setAttribute("AddImgSuccesfully","Product Image is Added successfully");
					response.sendRedirect("Dashborad.jsp");

				}
				catch(Exception e)
				{
					e.printStackTrace();
				}

			}
		}
		else if(action.equalsIgnoreCase("addproductdetails"))
		{
			int Pid=Integer.parseInt(request.getParameter("product_id"));
			String pWarranty=request.getParameter("ProductWarranty");
			double pWeight=Double.parseDouble(request.getParameter("ProductWeight"));
			int pCode=Integer.parseInt(request.getParameter("ProductCode"));

			ProductDao do1=new ProductDao();
			Product p=new Product();
			p.setProduct_id(Pid);
			p.setProduct_warranty(pWarranty);
			p.setProduct_weight(pWeight);
			p.setProduct_code(pCode);
			if(do1.checkExitingProductDetails(p))
			{
				HttpSession session=request.getSession();
				session.setAttribute("MassageToProductDetails","The Details of This Product ");
				response.sendRedirect("Dashborad.jsp");
			}


		}
		else if(action.equalsIgnoreCase("chechout"))
		{
			System.out.println(Integer.parseInt(request.getParameter("qunO")));
			HttpSession session=request.getSession();
			session.setAttribute("Quntitiy_orders", Integer.parseInt(request.getParameter("qunO")));
			int Product_id = (int) session.getAttribute("ProDiD");
			System.out.println(Product_id);
			response.sendRedirect("CheckOut.jsp");
		}
		else if(action.equalsIgnoreCase("fetchproid"))
		{
			//get product id 
			HttpSession sessi=request.getSession();
			int Product_id = (int) sessi.getAttribute("ProDiDC");
			System.out.println(Product_id);
			
			
		}
		else if(action.equalsIgnoreCase("buynow"))
		{
			//Fetch PRoduct Name From BuyNOe Button Product  
			String ProName=request.getParameter("ProductName");
			int ProID=Integer.parseInt(request.getParameter("ProId"));
			Product p=new Product();
			p.setProduct_id(ProID);
			p.setProduct_name(ProName);
			ArrayList<Product> proarr=new ArrayList<Product>();
			ProductDao pd=new ProductDao();
			// Call forProductDetails method 
			proarr=pd.forProductDetails(p);
			//This Session Send BuyNow Data On CheckOut Pages
			System.out.println(proarr);
			HttpSession session=request.getSession();
			session.setAttribute("BuyNoWDetails",proarr);
	//		
			 response.sendRedirect("ProductDetails.jsp"); 
			//response.sendRedirect("Welcome.jsp");
			

			
			
		}
		else if(action.equalsIgnoreCase("update"))
		{
			int proId=Integer.parseInt(request.getParameter("proId"));
			System.out.println(proId);
			ProductDao pd=new ProductDao();
			
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int proId=Integer.parseInt(request.getParameter("proId"));
			System.out.println(proId);
			ProductDao pd=new ProductDao();
			pd.removeKart(proId);
			pd.removeProductDetails(proId);
			pd.removeImage(proId);
			pd.removeStokManage(proId);
			pd.removeProduct(proId);
			HttpSession session=request.getSession();
			session.setAttribute("RemovePro","Product is Delete");
			response.sendRedirect("CrudOnProduct.jsp");

			
		}
		else if(action.equalsIgnoreCase("finalpay"))
		{
			HttpSession session=request.getSession();
			int OrderQuantity=(int)session.getAttribute("Quntitiy_orders");
			int OrderProductId=(int) session.getAttribute("ProDiD");
			String Email=(String)session.getAttribute("EML");
			String PayMode=request.getParameter("customRadioInline1");
			System.out.println(PayMode);
			User u=new User();
			UserDao do1=new UserDao();
			u.setCustomer_email(Email);
			Product p=new Product();
			ProductDao dp=new ProductDao();

			u=dp.fetchName(u);
			
			p.setPayment_id(OrderProductId);
			p.setProduct_id(OrderProductId);
			p=dp.FetchOrderData(p);
			double netpay= OrderQuantity * (p.getProduct_price() - (p.getProduct_price() * p.getProduct_Discount())/100)  ;
			p.setPayment_price(netpay);
			p.setPer_unit_product_cost(p.getProduct_price());
			double discounts=(p.getProduct_price() - (p.getProduct_price() * p.getProduct_Discount())/100);
			p.setDiscount_on_product_cost(discounts);
			p.setTotal_order_product_cost(netpay);
			p=dp.InsertPayment(u.getCustomer_id(),netpay);
			
			p.setOrder_quntity(OrderQuantity);
			/* dp.findpayId(); */
			System.out.println("NON"+p.getPayment_id());
			System.out.println("NON"+netpay);
			System.out.println("Ino" +p.getProduct_id());
			p.setCustomer_id(u.getCustomer_id());
			System.out.println("1"+u.getCustomer_id());
			System.out.println("2"+p.getPayment_id());
			System.out.println("3"+p.getProduct_id());
			System.out.println("4"+p.getProduct_Quntity());
			System.out.println("5"+p.getPer_unit_product_cost());
			System.out.println("6"+p.getDiscount_on_product_cost());
			System.out.println("7"+p.getTotal_order_product_cost());
			
			
			p=dp.insertorder(p);
			
			response.sendRedirect("index.jsp");
				
			
			System.out.println("Net Pay" + netpay);
			System.out.println(u.getCustomer_id());
			System.out.println(p.getProduct_name());
			System.out.println(u.getCustomer_id());
			
			
		
			System.out.println("Done");
		}
		else if(action.equalsIgnoreCase("removecart"))
		{
			 HttpSession session=request.getSession();
			 int p=Integer.parseInt(request.getParameter("kardetailsId"));
			 ProductDao pd=new ProductDao();
			 pd.removeCartDetails(p);
			 session.setAttribute("REMOVECART","Product IS REMOVE");
			 response.sendRedirect("Kart.jsp");
			 
		}
		else if(action.equalsIgnoreCase("checkout"))
		{
			
			HttpSession session=request.getSession();
			double payable=Double.parseDouble(request.getParameter("tatalpay"));
			double FirstCartProDuctPrice=Double.parseDouble(request.getParameter("Fprice"));
			double SecondCartProDuctPrice=Double.parseDouble(request.getParameter("Sprice"));
			int FPQ=Integer.parseInt(request.getParameter("F1"));
			int SecondProductQUntity=Integer.parseInt(request.getParameter("F2"));
			int KartId=Integer.parseInt(request.getParameter("kardetailsId"));
			
			
			
			session.setAttribute("KartFirstId",KartId);
			session.setAttribute("FisrtProductPrice",FirstCartProDuctPrice);
			session.setAttribute("SecondProductPrice",SecondCartProDuctPrice);
			session.setAttribute("FirstQuntity",FPQ);
			session.setAttribute("secondQuntity",SecondProductQUntity);
			session.setAttribute("taotalpay",payable);
			response.sendRedirect("CheckOut.jsp");
			
			/*
			 * System.out.println(CartDetailsId); System.out.println(payable);
			 * System.out.println(payable0); System.out.println(payable1);
			 * System.out.println(ProductId);
			 */
		}
		else if(action.equalsIgnoreCase("finalpayoutone"))
		{
			HttpSession session=request.getSession();
			String Email=(String)session.getAttribute("EML");
			double fprice = (double) session.getAttribute("BuyOneProductOFF");
			double PerProductprice = (double) session.getAttribute("PerCostProduct");
			double PerProductpriceDics = (double) session.getAttribute("discountonproduct");
			int orderquntity = (Integer) session.getAttribute("BuyOneProductqunt");
			int ProductsId = (Integer) session.getAttribute("ProductIds");
			System.out.println(orderquntity +"hhhhhhhh");
			User u=new User();
			UserDao do1=new UserDao();
			u=do1.fetchName(Email);
			System.out.println(u.getCustomer_id());
			ProductDao po=new ProductDao();
			po.InsertPayment(u.getCustomer_id(),fprice);
			Product p=new Product();
			p=po.findpayId(fprice,u.getCustomer_id());
			System.out.println(p.getPayment_id());
		    po.insertordes(u.getCustomer_id(), p.getPayment_id(), 1,fprice);
			Product pp=new Product();
			pp=po.findordersId(u.getCustomer_id(), p.getPayment_id(), 1, fprice);
			System.out.println("gogo" + pp.getOrders_id());
			po.insertOrderDetails(ProductsId, pp.getOrders_id(), orderquntity, PerProductprice, PerProductpriceDics, fprice);			
			
			
			
			/*
			 * UserDao do1=new UserDao(); double
			 * d=(Double)session.getAttribute("taotalpay"); u.setCustomer_email(Email);
			 * Product p=new Product(); ProductDao dp=new ProductDao();
			 * dp.InsertPayment(u.getCustomer_id(),d); p=dp.findpayId(d);
			 * dp.insertordes(u.getCustomer_id(),p.getPayment_id(),d);
			 */
			/* System.out.println(session.getAttribute("ProId")); */
			
			
			
		}
		else if(action.equalsIgnoreCase("chechoutOne"))
		{
			double ProductPrice=Double.parseDouble(request.getParameter("productPrices"));
			System.out.println(ProductPrice);
			int Product_idO=Integer.parseInt(request.getParameter("ProdIdsOne"));
			double ProductPriceOff=Double.parseDouble(request.getParameter("ProOff1"));
			int NumberProduct=Integer.parseInt(request.getParameter("Proqunt"));
		
			double result=((ProductPrice -(ProductPrice*ProductPriceOff)/100)) *NumberProduct ;
			double finalPrice=(result + (result * 10)/100);
			HttpSession session=request.getSession();
			session.setAttribute("BuyOneProductPrice",result);
			session.setAttribute("discountonproduct",ProductPriceOff);
			session.setAttribute("PerCostProduct",ProductPrice);
			session.setAttribute("BuyOneProductOFF",finalPrice);
			session.setAttribute("ProductIds",Product_idO);
			session.setAttribute("BuyOneProductqunt",NumberProduct);
			response.sendRedirect("checkOut2.jsp");
			
		}
		else if(action.equalsIgnoreCase("gotocart"))
		{
			HttpSession session=request.getSession();
			int ProID=Integer.parseInt(request.getParameter("ProId"));
			System.out.println(ProID +"In GOTOCART");
			ProductDao pd=new ProductDao();
			UserDao ud=new UserDao();
			User u1=new User();
			Product p=new Product();
			
			String Email=(String)session.getAttribute("EML");
			u1=ud.fetchName(Email);
			
			p.setProduct_id(ProID);
			
			System.out.println(pd.checkCartInCart(u1));
			if(pd.checkCartInCart(u1))
			{
				System.out.println(pd.checkProIdInCartDetails(ProID));
				if(pd.checkProIdInCartDetails(ProID))
				{
					session.setAttribute("MassageFromCart","U Have Already Add This Product In Cart");
					response.sendRedirect("index.jsp");
				}
				else
				{
					Product p2=new Product();
					p2=pd.findCartId(u1.getCustomer_id());
					int CartId=p2.getKart_id();
					pd.InsertProductInKartsdetails(CartId,ProID);
					response.sendRedirect("Kart.jsp");
					
				}
			}
			else
			{
				pd.inserKartId(u1.getCustomer_id());
				System.out.println(pd.checkProIdInCartDetails(ProID));
				if(pd.checkProIdInCartDetails(ProID))
				{
					session.setAttribute("MassageFromCart","U Have Already Add This Product In Cart");
					response.sendRedirect("index.jsp");
				}
				else
				{
					Product p2=new Product();
					p2=pd.findCartId(u1.getCustomer_id());
					int CartId=p2.getKart_id();
					pd.InsertProductInKartsdetails(CartId,ProID);
					response.sendRedirect("Kart.jsp");
				}
					
			}
			
			
			
		}
		else
		{
			HttpSession session=request.getSession();
			System.out.println(action + "hi");
			int i=Integer.parseInt(action);
			ArrayList<Product> p=new ArrayList<Product>();
			
			
			ProductDao pd=new ProductDao();
			p=pd.showCarPro(i);
			System.out.println(p);
			session.setAttribute("PSC",i);
			response.sendRedirect("ShowCatPro.jsp");
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("hello");
		int Pro_id=Integer.parseInt(request.getParameter("action"));
		System.out.println("hello"+Pro_id);
		HttpSession session=request.getSession();
		session.setAttribute("ProDiD",Pro_id);

		response.sendRedirect("ProductDetails.jsp");
		 
	}
}



