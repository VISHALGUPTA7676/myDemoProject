package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.bean.Product;
import com.bean.User;
import com.dbconnection.DBConnection;

public class ProductDao {
	
	public Product AddCat(Product p)
	{
//		Product p=new Product();
		String query="INSERT INTO `product_categories`( `categories_name`, `categories_description`) VALUES (?,?)";
		try
		{
			
			System.out.println(p.getCategories_name());
			System.out.println(p.getCategories_description());
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, p.getCategories_name());
			st.setString(2, p.getCategories_description());
			st.executeUpdate();
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public boolean CheckCat(String name)
	{
		String query="SELECT categories_name FROM `product_categories` WHERE categories_name=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, name);
			ResultSet rs = st.executeQuery();
			System.out.println("Goin");
			
			if (rs.next()) 
				{ 
				return true;
				}
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean checkproduct(String name)
	{
		try
		{
			Connection conn=DBConnection.createConnection();
			String query="SELECT * FROM `products` WHERE product_name=?";
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, name);
			ResultSet rs = st.executeQuery();
			System.out.println("Goin");
			
			if (rs.next()) 
				{ 
				return true;
				}
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	
	
	public Product AddProduct(Product p1)
	{
		
		String query="INSERT INTO `products`( `sub_categories_id`, `brand_id`, `product_name`, `product_description`, `product_Quantity`, `product_Discount`, `product_price`) VALUES (?,?,?,?,?,?,?)";
		try 
		{
			
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			System.out.println("In Dao");
			System.out.println(p1.getBrand_id());
			System.out.println(p1.getSub_categories_id());
			System.out.println(p1.getProduct_Discount());
			System.out.println(p1.getProduct_description());
			System.out.println(p1.getProduct_name());
			System.out.println(p1.getProduct_price());
			st.setInt(1, p1.getSub_categories_id());
			st.setInt(2, p1.getBrand_id());
			st.setString(3, p1.getProduct_name());
			st.setString(4, p1.getProduct_description());
			st.setInt(5, p1.getProduct_Quntity());
			st.setDouble(6, p1.getProduct_Discount());
			st.setDouble(7, p1.getProduct_price());
			st.executeUpdate();
			st.close();
			conn.close();
			
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return p1;
	}
	
	public Product AddSubCat(Product p)
	{
		String query="INSERT INTO `sub_categories`( `sub_categories_name`, `categories_id`) VALUES (?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, p.getSub_categories_name());
			st.setInt(2, p.getCategories_id());
			System.out.println("LalaGIhai");
			st.executeUpdate();
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public Product InsertImage(Product p)
	{
		String query="INSERT INTO `product_image`( `product_id`, `product_image`) VALUES (?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getProduct_id());
			st.setString(2, p.getProduct_image());
			System.out.println(p.getProduct_id());
			System.out.println(p.getProduct_image());
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public Boolean Checkimg(Product p)
	{
		String query="SELECT `product_image` FROM `product_image` where product_image=?	";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, p.getProduct_image());
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
					return true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	public Boolean checkExitingProductDetails(Product p)
	{
		String query="SELECT `product_details_Id`,  `product_warranty`, `product_weight`, `product_code` FROM `product_details` WHERE `product_id`=?";
		try
		{	
			
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getProduct_id());
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
					return true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	public Product InsertProductDetails(Product p)
	{
		String query="INSERT INTO `product_details`(`product_id`, `product_warranty`, `product_weight`, `product_code`) VALUES (?,?,?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getProduct_id());
			st.setString(2, p.getProduct_warranty());
			st.setDouble(3, p.getProduct_weight());
			st.setInt(4, p.getProduct_code());
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public Product FindProductId(Product p)
	{
		String query="SELECT `product_id` FROM `products` WHERE `sub_categories_id`=? AND `brand_id`=? AND `product_name`=? AND `product_description`=? AND `product_Quantity`=? AND `product_Discount`=? AND `product_price`=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getSub_categories_id());
			st.setInt(2, p.getBrand_id());
			st.setString(3, p.getProduct_name());
			st.setString(4, p.getProduct_description());
			st.setInt(5,p.getProduct_Quntity());
			st.setDouble(6, p.getProduct_Discount());
			st.setDouble(7, p.getProduct_price());
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
					p.setProduct_id(rs.getInt("product_id"));
			}
			
		}
		catch(Exception e)
		{
			
		}
		return p;
	}
	
	public Product InsertBrand(Product p)
	{
		String query="INSERT INTO `product_brand`(`brand_name`, `brand_description`) VALUES (?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setString(1, p.getBrand_name());
			st.setString(2, p.getBrand_description());
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return p;
	}
	
	public Product FetchOrderData(Product p)
	{
		String query="SELECT pi.product_image,p.product_id,p.product_name,p.product_price,p.product_Discount,pb.brand_name,pd.product_warranty,sb.sub_categories_name ,pd.product_weight,pd.product_code,p.product_description FROM products p INNER JOIN product_image pi ON p.product_id=pi.product_id INNER JOIN product_details pd ON p.product_id=pd.product_id INNER JOIN sub_categories sb ON p.sub_categories_id=sb.sub_categories_id INNER JOIN product_brand pb ON p.brand_id=pb.brand_id WHERE p.product_id=?";
	
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getProduct_id());
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				p.setProduct_image(rs.getString("pi.product_image"));
				p.setProduct_id(rs.getInt("p.product_id"));
				p.setProduct_name(rs.getString("p.product_name"));
				p.setProduct_price(rs.getDouble("p.product_price"));
				p.setProduct_Discount(rs.getDouble("p.product_Discount"));
				p.setBrand_name(rs.getString("pb.brand_name"));
				p.setProduct_warranty(rs.getString("pd.product_warranty"));
				p.setSub_categories_name(rs.getString("sb.sub_categories_name"));
				p.setProduct_weight(rs.getDouble("pd.product_weight"));
				p.setProduct_code(rs.getInt("pd.product_code"));
				p.setProduct_description(rs.getString("p.product_description"));
				
			}
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		return p;
	}
	
	public void insertOrderDetails(int proId,int order_id,int qunt,double percost,double disc,double fcost)
	{
		String query="INSERT INTO `order_details`(`product_id`, `orders_id`, `order_quntity`, `per_unit_product_cost`, `discount_on_product_cost`, `total_order_product_cost`) VALUES (?,?,?,?,?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, proId);
			st.setInt(2, order_id);
			st.setInt(3, qunt);
			st.setDouble(4, percost);
			st.setDouble(5, disc);
			st.setDouble(6, fcost);
			
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		
	}
	public User fetchName(User u)
	{
		
		
		String query="SELECT customer_id,customer_fisrtname , customer_lastname FROM `customer` WHERE customer_email=?";
		
		
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, u.getCustomer_email());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				u.setCustomer_id(rs.getInt("customer_id"));
				u.setCustomer_fisrtname(rs.getString("customer_fisrtname"));
				u.setCustomer_lastname(rs.getString("customer_lastname"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
	}
	public Product InsertPayment(int i,double d1)
	{
		Product p=new Product();
		User u=new User();
		LocalDate d=LocalDate.now();
		String date=d.toString();
		String status="successful";
		String n="COD";
		
		System.out.println(u.getCustomer_id());
		String query="INSERT INTO `payment`(`customer_id`, `payment_status`, `payment_mode`, `payment_date`, `payment_price`) VALUES (?,?,?,?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			
			st.setInt(1, i);
			st.setString(2, status);
			st.setString(3, n);
			st.setString(4, date);
			st.setDouble(5, d1);
			
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public boolean checkPay(int i)
	{
		String query="SELECT * FROM `payment` WHERE WHERE customer_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				
				return true;
			}
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return false;
	}
	public Product findpayId(double dd,int id)
	{
		Product p=new Product();
		String query="SELECT `payment_id` FROM `payment` WHERE  `payment_price`=? AND `customer_id`=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setDouble(1, dd);
			st.setInt(2, id);
			ResultSet rs=st.executeQuery();
			System.out.println("RSS+");
			System.out.println("NON"+p.getPayment_id());
			while(rs.next())
			{
				p.setPayment_id(rs.getInt("payment_id"));
				System.out.println("RSS" +rs.getInt("payment_id"));
			}
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return p;
	}
	
	public void insertordes(int cu,int pa,int qunt,double pay)
	{
		String query="INSERT INTO `orders`( `customer_id`, `payment_id`, `orders_date`, `order_status`, `total_order_quantity`, `total_order_price`) VALUES (?,?,?,?,?,?)";
		LocalDate d=LocalDate.now();
		String date=d.toString();
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, cu);
			st.setInt(2, pa);
			st.setString(3, date);
			st.setString(4, "Confirm");
			st.setInt(5, qunt);
			st.setDouble(6, pay);
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	
	public Product findProId()
	{	
		Product p=new Product();
		String query="";
		try
		{
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	public Product insertorder(Product p)
	{
		
		LocalDate d=LocalDate.now();
		String date=d.toString();
		System.out.println("InDao" +p.getProduct_id());
		String query="INSERT INTO `order_details`( `customer_id`, `payment_id`, `product_id`, `order_quntity`, `per_unit_product_cost`, `discount_on_product_cost`, `total_order_product_cost`, `order_status`, `order_date`) VALUES (?,?,?,?,?,?,?,?,?)";
		
		System.out.println("1"+p.getCustomer_id());
		System.out.println("2"+p.getPayment_id());
		System.out.println("3"+p.getProduct_id());
		System.out.println("4"+p.getProduct_Quntity());
		System.out.println("5"+p.getPer_unit_product_cost());
		System.out.println("6"+p.getDiscount_on_product_cost());
		System.out.println("7"+p.getTotal_order_product_cost());
		
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, p.getCustomer_id());
			st.setInt(2, p.getPayment_id());
			st.setInt(3, p.getProduct_id());
			st.setInt(4, p.getProduct_Quntity());
			st.setDouble(5, p.getPer_unit_product_cost());
			st.setDouble(6, p.getDiscount_on_product_cost());
			st.setDouble(7, p.getTotal_order_product_cost());
			st.setString(8, "Confirm");
			st.setString(9, date);
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}

		
	public ArrayList<Product> displayProduct()
	{
		ArrayList<Product> p=new ArrayList<Product>();
		
		String query0 = " SELECT i.product_image ,p.product_name,p.product_price,p.product_Discount,p.product_id  FROM products p INNER JOIN product_image i on p.product_id=i.product_id INNER JOIN product_brand pb  ON p.brand_id=pb.brand_id  INNER JOIN sub_categories sb ON p.sub_categories_id=sb.sub_categories_id";
		/* String query01 = "SELECT  `product_name` , `product_price`,`product_Discount` FROM `products` WHERE `product_id`=?"; */
		
		try {
			Connection conn=DBConnection.createConnection();
			
			PreparedStatement st = conn.prepareStatement(query0);
			ResultSet rs = st.executeQuery();
			while (rs.next())
			{
				Product a=new Product();
				System.out.println("IN RS");
				a.setProduct_image(rs.getString("i.product_image"));
				a.setProduct_name(rs.getString("p.product_name"));
				a.setProduct_price(rs.getDouble("p.product_price"));
				
				a.setProduct_Discount(rs.getDouble("p.product_Discount"));
				a.setProduct_id(rs.getInt("p.product_id"));
				p.add(a);
				System.out.println(rs.getString("i.product_image"));
			}
			st.close();
			conn.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

		return p;
	}
	
	public ArrayList<Product> forProductDetails(Product p1)
	{
		ArrayList<Product> p=new ArrayList<Product>();
		String query = "SELECT pi.product_image,p.product_id,p.product_name,p.product_price,p.product_Discount,pb.brand_name,pd.product_warranty,sb.sub_categories_name ,pd.product_weight,pd.product_code,p.product_description FROM products p INNER JOIN product_image pi ON p.product_id=pi.product_id INNER JOIN product_details pd ON p.product_id=pd.product_id INNER JOIN sub_categories sb ON p.sub_categories_id=sb.sub_categories_id INNER JOIN product_brand pb ON p.brand_id=pb.brand_id WHERE p.product_id=?";
		System.out.println(p1.getProduct_name());
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, p1.getProduct_id());
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				Product pp=new Product();
				pp.setProduct_image(rs.getString("pi.product_image"));
				pp.setProduct_id(rs.getInt("p.product_id"));
				pp.setProduct_name(rs.getString("p.product_name"));
				pp.setProduct_price(rs.getDouble("p.product_price"));
				pp.setProduct_Discount(rs.getDouble("p.product_Discount"));
				pp.setBrand_name(rs.getString("pb.brand_name"));
				pp.setProduct_warranty(rs.getString("pd.product_warranty"));
				pp.setSub_categories_name(rs.getString("sb.sub_categories_name")); 
				pp.setProduct_weight(rs.getDouble("pd.product_weight"));
				pp.setProduct_code(rs.getInt("pd.product_code"));
				pp.setProduct_description(rs.getString("p.product_description"));
				p.add(pp);
			}
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
	public void InsertDataInStockManage(Product p)
	{
		String query="INSERT INTO `stock_manage`(`product_id`, `total_number_of_product_sell`, `total_available_product`) VALUES (?,?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, p.getProduct_id());
			st.setInt(2, 0);
			st.setInt(3, p.getProduct_Quntity());
			st.executeUpdate();
			st.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Product> fetchAllProductForCrud()
	{
		ArrayList<Product> p=new ArrayList<Product>();
		String query="SELECT p.product_id,p.product_name, p.product_name,p.product_description,p.product_Quantity,p.product_price,p.product_Discount,st.total_number_of_product_sell,st.total_available_product,pd.product_warranty,pd.product_weight,pd.product_code,pb.brand_name,sb.sub_categories_name FROM products p\r\n"
				+ "INNER JOIN product_brand pb\r\n"
				+ "ON p.brand_id=pb.brand_id\r\n"
				+ "INNER JOIN product_details pd\r\n"
				+ "ON pd.product_id=p.product_id\r\n"
				+ "INNER JOIN stock_manage st\r\n"
				+ "ON st.product_id=p.product_id\r\n"
				+ "INNER JOIN sub_categories sb\r\n"
				+ "ON sb.sub_categories_id=p.sub_categories_id";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				Product p1=new Product();
				p1.setProduct_id(rs.getInt("p.product_id"));
				p1.setProduct_name(rs.getString("p.product_name"));
				p1.setProduct_description(rs.getString("p.product_description"));
				p1.setProduct_Quntity(rs.getInt("p.product_Quantity"));
				p1.setProduct_price(rs.getDouble("p.product_price"));
				p1.setProduct_Discount(rs.getDouble("p.product_Discount"));
				p1.setTotal_number_of_product_sell(rs.getInt("st.total_number_of_product_sell"));
				p1.setTotal_available_product(rs.getInt("st.total_available_product"));
				p1.setProduct_warranty(rs.getString("pd.product_warranty"));
				p1.setProduct_weight(rs.getDouble("pd.product_weight"));
				p1.setProduct_code(rs.getInt("pd.product_code"));
				p1.setBrand_name(rs.getString("pb.brand_name"));
				p1.setSub_categories_name(rs.getString("sb.sub_categories_name"));
				p.add(p1);
			}
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return p;
	}
	
	public void removeProductDetails(int p)
	{
		int i=p;
		String query="DELETE FROM `product_details` WHERE product_id=?" ;
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			System.out.println("Record id delete Deta");
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void removeProduct(int p)
	{
		int i=p;
		String query="DELETE FROM `products` WHERE product_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			System.out.println("Rmove Product");
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void removeImage(int p)
	{
		int i=p;
		String query="DELETE FROM `product_image` WHERE product_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			System.out.println("Rmove ProductImage");
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void removeKart(int p)
	{
		int i=p;
		String query="DELETE FROM `kart_details` WHERE  product_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			System.out.println("Rmove ProductImage");
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void removeStokManage(int p)
	{
		int i=p;
		String query="DELETE FROM `stock_manage` WHERE product_id=? ";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st=conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			System.out.println("Rmove ProductImage");
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product> showCarPro(int name)
	{
		ArrayList<Product> p=new ArrayList<Product>();
		System.out.println("hello");
		String query =  " SELECT i.product_image ,p.product_name,p.product_price,p.product_Discount,p.product_id  FROM products p INNER JOIN product_image i on p.product_id=i.product_id INNER JOIN product_brand pb  ON p.brand_id=pb.brand_id  INNER JOIN sub_categories sb ON p.sub_categories_id=sb.sub_categories_id WHERE sb.sub_categories_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, name);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				
				Product a=new Product();
				System.out.println("IN RS");
				a.setProduct_image(rs.getString("i.product_image"));
				a.setProduct_name(rs.getString("p.product_name"));
				a.setProduct_price(rs.getDouble("p.product_price"));
				
				a.setProduct_Discount(rs.getDouble("p.product_Discount"));
				a.setProduct_id(rs.getInt("p.product_id"));
				p.add(a);
				System.out.println(rs.getString("i.product_image"));

			}
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		return p;
	}
	
	public boolean checkProIdInCartDetails(int i)
	{
		String query="SELECT * FROM `kart_details` WHERE product_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, i);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean checkCartInCart(User u)
	{
		String query="SELECT * FROM `kart` WHERE  customer_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, u.getCustomer_id());
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public void InsertProductInKartsdetails(int i,int j)
	{
		String query="INSERT INTO `kart_details`( `product_id`, `kart_id`) VALUES (?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, j);
			st.setInt(2, i);
		
			st.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	
	public Product findCartId( int i)
	{
		String query="SELECT `kart_id`  FROM `kart` WHERE `customer_id`=? ";
		Product p=new Product();
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, i);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				p.setKart_id(rs.getInt("kart_id"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return p;
	}
	public Product findordersId(int cusId,int payId,int qunt,double pay)
	{
		Product p=new Product();
		String query="SELECT `orders_id` FROM `orders` WHERE `customer_id`=? AND `payment_id`=? AND `total_order_quantity`=? AND `total_order_price`=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, cusId);
			st.setInt(2, payId);
			st.setInt(3, qunt);
			st.setDouble(4, pay);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				p.setOrders_id(rs.getInt("orders_id"));
			}
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return p;
	}
	public void inserKartId(int i)
	{
		String query="INSERT INTO `kart`( `customer_id`) VALUES (?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		
	}
	
	public ArrayList<Product> myCartShow()
	{
		ArrayList<Product> p=new ArrayList<Product>();
		String query="SELECT i.product_image ,p.product_name,p.product_description,p.product_price,p.product_Discount,p.product_id,cdi.kardDeatails_id,ci.kart_id  FROM products p \r\n"
				+ "INNER JOIN product_image i\r\n"
				+ "on p.product_id=i.product_id \r\n"
				+ "INNER JOIN product_brand pb \r\n"
				+ "ON p.brand_id=pb.brand_id \r\n"
				+ "INNER JOIN sub_categories sb\r\n"
				+ "ON p.sub_categories_id=sb.sub_categories_id \r\n"
				+ "INNER JOIN kart_details cdi\r\n"
				+ "ON cdi.product_id=p.product_id\r\n"
				+ "INNER JOIN kart ci\r\n"
				+ "ON ci.kart_id=cdi.kart_id";
		try {
			Connection conn=DBConnection.createConnection();
			
			PreparedStatement st = conn.prepareStatement(query);
			ResultSet rs = st.executeQuery();
			while (rs.next())
			{
				Product a=new Product();
				System.out.println("IN RS");
				a.setProduct_image(rs.getString("i.product_image"));
				a.setProduct_name(rs.getString("p.product_name"));
				a.setProduct_description(rs.getString("p.product_description"));
				a.setProduct_price(rs.getDouble("p.product_price"));
				
				a.setProduct_Discount(rs.getDouble("p.product_Discount"));
				a.setProduct_id(rs.getInt("p.product_id"));
				a.setKardDeatails_id(rs.getInt("cdi.kardDeatails_id"));
				a.setKart_id(rs.getInt("ci.kart_id"));
				p.add(a);
				
			}
			st.close();
			conn.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

		return p;
	}
	public void removeCartDetails(int i)
	{
		String query="DELETE FROM `kart_details` WHERE kardDeatails_id=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, i);
			st.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}
