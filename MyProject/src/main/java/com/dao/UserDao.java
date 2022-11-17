package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.User;
import com.dbconnection.DBConnection;

public class UserDao {

	/*
	 * public static void userState(User u1) { //User u=new User();
	 * 
	 * 
	 * 
	 * System.out.println("yes inserted"); try {
	 * 
	 * System.out.pCrintln("yes inserted"); Connection
	 * conn=DBConnection.createConnection(); String query
	 * ="INSERT INTO statetable(state_name) VALUES(?) ";
	 * System.out.println("yes inserted"); PreparedStatement
	 * st=conn.prepareStatement(query); System.out.println("yes inserted");
	 * st.setInt(1, ); st.setString(1, u1.getState_name()); st.executeUpdate();
	 * System.out.println("yes inserted"); st.close(); conn.close();
	 * 
	 * } catch (Exception e) { // TODO: handle exception e.printStackTrace(); }
	 * 
	 * }
	 */
	
	
	
	
	/*
	 * public static void userArea(User u1) {
	 * 
	 * 
	 * try {
	 * 
	 * System.out.println("yes inserted"); Connection
	 * conn=DBConnection.createConnection(); String query
	 * ="INSERT INTO `areatable`(`area_pincode`, `city_id`, `house_number`, `building_name`, `area_name`) VALUES (?,?,?,?,?) "
	 * ; System.out.println("yes inserted"); PreparedStatement
	 * st=conn.prepareStatement(query); System.out.println("yes inserted 1222");
	 * //st.setInt(1, ); st.setInt(1, u1.getArea_pincode()); st.setInt(2,
	 * u1.getCity_id()); st.setInt(3, u1.getHouse_number()); st.setString(4,
	 * u1.getBuilding_name()); st.setString(5, u1.getArea_name());
	 * 
	 * //st.setString(1, u1.getState_name()); st.executeUpdate();
	 * System.out.println("yes inserted"); st.close(); conn.close();
	 * }catch(Exception e) {e.printStackTrace();}
	 * 
	 * }
	 */
	
	
	
	
	
	/*
	 * public boolean userlogin(String Username, String Password) { String query =
	 * "SELECT customer_email ,customer_password FROM customer WHERE customer_email=? and customer_password=?"
	 * ; System.out.println("yesz"); try { Connection connection =
	 * DBConnection.createConnection(); PreparedStatement st =
	 * connection.prepareStatement(query); st.setString(1, Username);
	 * st.setString(2, Password); System.out.println("yesz"); ResultSet rs =
	 * st.executeQuery(); if (rs.next()) { return true; } } catch (Exception e) {
	 * e.printStackTrace(); } return false; }
	 */
	
	/*public static List<State> fetchState()
	{
		List<State> users= new ArrayList<>(); 
		String query="select * from statetable";
		System.out.println("Yes Hai");
		
		try 
		{
			User u=new User();
			
			Connection con=DBConnection.createConnection();
			PreparedStatement st=con.prepareStatement(query);
			ResultSet rs=st.executeQuery();
			System.out.println("yesz");
			while(rs.next())
			{
				 State s=new State(); 
				
				//u.setState_name(rs.getString("state_name"));
			//	u.setState_id(rs.nextLine());
				//state_id.add(u);
				//u.set(state_name.add(rs.getString(1)));
				
				//u.setHouse_number(rs.getInt("state_id"));
				//u.setCustomer_fisrtname(rs.getString("state_name"));
			
			 * u.setState_id(rs.getInt("state_id"));
			 * 
			 * u.setState_name(rs.getString("state_name"));
			 
				int state_id =rs.getInt("state_id");
				String state_name=rs.getString("state_name");
				users.add(new State(state_name , state_id));
				
				
				
				System.out.println(rs.getInt("state_id"));
	
				System.out.println(rs.getString("state_name"));
			}
			
			System.out.println(users.size());
			int i;
			for(i=0;i<29;i++) 
			{
			System.out.println(users.get(i).getState_id());
			System.out.println(users.get(i).getState_name());
			
			}
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	return users;	
	}*/
	
	public boolean  checkState(String cityname)
	{
		//User u1=new User();
		String CITYNAME=cityname.toLowerCase();
		System.out.println(CITYNAME);
		String query="SELECT city_id FROM `citytable` WHERE city_name=?";
		
		try
		{
			
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, CITYNAME);
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
	
	public  User fetchCityId(String cityname)
	{
		User u1=new User();
		String CITYNAME=cityname.toLowerCase();
	//	System.out.println(u1.getCustomer_fisrtname());
		System.out.println(CITYNAME);
//		System.out.println(u1.getCustomer_gender());
		String query="SELECT city_id FROM `citytable` WHERE city_name=?";
		
		try
		{
			
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, CITYNAME);
			ResultSet rs = st.executeQuery();
			System.out.println("Goin");
			
			if (rs.next()) 
			{
			   
				u1.setCity_id(rs.getInt("city_id"));
				 			
			}
			st.close();
			conn.close();			
		}		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return u1;
	}
	
	
	public User fetchAreaId(int areaPin,String AreaName,String BName,int houseN)
	{
		User u1=new User();
		int apin=areaPin;
		int hN=houseN;
		String BuildN=BName.toLowerCase();
		String AName=AreaName.toLowerCase();

		
		String query="SELECT area_id FROM `areatable` WHERE area_pincode=? AND area_name=? AND building_name=? AND house_number=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			
			st.setInt(1, apin);
			st.setString(2, AName);			
			st.setString(3, BuildN);
			st.setInt(4, hN);
			ResultSet rs = st.executeQuery();
			if (rs.next()) 
			{
				u1.setArea_id(rs.getInt("area_id"));
			}
			st.close();
			conn.close();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return u1;
	}
	
	public void insertarea(int cityId,int areaPin,int houseN,String BName,String AreaName)
	{
		
		int cid=cityId;
		int apin=areaPin;
		int hN=houseN;
		String BuildN=BName.toLowerCase();
		String AName=AreaName.toLowerCase();
		String query="INSERT INTO `areatable`(`city_id`, `area_pincode`, `house_number`, `building_name`, `area_name`) VALUES (?,?,?,?,?)";
		
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setInt(1, cid);
			st.setInt(2, apin);
			st.setInt(3, hN);
			st.setString(4, BuildN);
			st.setString(5, AName);
			st.executeUpdate();
			
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public  void insertcity(String name , int id) 
	{	
		//User u2=new User();
		
		String Cname=name.toLowerCase();
		int stateId=id;
		System.out.println(stateId);
		//name=name.toLowerCase();
		System.out.println(Cname);
		
		String query="INSERT INTO `citytable`( `state_id`, `city_name`) VALUES (?,?)";
		try 
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setInt(1, stateId);
			st.setString(2, Cname);
			st.executeUpdate();
			st.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	
	public  void insertuser(int Aid,String CFname,String CLname,String Gen,long Mno,String email,String Passwd)
	{
		int a1=Aid;
		String a2=CFname;
		String a3=CLname;
		String a4=Gen;
		long a5=Mno;
		String a6=email;
		String a7=Passwd;
		String query="INSERT INTO `customer`( `area_id`, `customer_email`, `customer_fisrtname`, `customer_lastname`, `customer_gender`, `customer_mobile`, `customer_password`) VALUES (?,?,?,?,?,?,?)";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setInt(1, a1);
			st.setString(2, a6);
			st.setString(3, a2);
			st.setString(4, a3);
			st.setString(5, a4);
			st.setLong(6, a5);
			
			st.setString(7, a7);
			st.executeUpdate();
			st.close();
			conn.close();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public boolean loginCheck(String Email,String PassWord)
	{
		String query="SELECT * FROM `customer` WHERE customer_email=? AND customer_password=?";
		try
		{
			//User u=new User();
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, Email);
			st.setString(2, PassWord);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				/*
				 * u.setCustomer_fisrtname(rs.getString("customer_fisrtname"));
				 * System.out.println(u.getCustomer_fisrtname());
				 * System.out.println(u.getCustomer_lastname());
				 * u.setCustomer_fisrtname(rs.getString("customer_lastname"));
				 */
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
	public boolean verifyEmail(String email)
	{
		String query="SELECT * FROM `customer` WHERE customer_email=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs=st.executeQuery();
			if(rs.next())
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
	
	public User fetchName(String Email)
	{
		User u=new User();
		String email=Email;
		String query="SELECT customer_id,customer_fisrtname , customer_lastname FROM `customer` WHERE customer_email=?";
		System.out.print(email);
		
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, email);
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
	
	public ArrayList<User> fetchUser(String email)
	{
		ArrayList<User> u1=new ArrayList<User>();
		String query="SELECT c.customer_fisrtname,c.customer_lastname,c.customer_email,c.customer_mobile,d.city_name,s.state_name FROM customer c\r\n"
				+ "INNER JOIN areatable a\r\n"
				+ "on c.area_id=a.area_id\r\n"
				+ "INNER JOIN citytable d\r\n"
				+ "ON a.city_id=d.city_id\r\n"
				+ "INNER JOIN statetable s\r\n"
				+ "ON d.state_id=s.state_id\r\n"
				+ "WHERE customer_email=?";
		try
		{
			
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, email);
			System.out.print(email);
			ResultSet rs=st.executeQuery();
			System.out.println("hi111");
			while(rs.next())
			{	User u=new User();
				u.setCustomer_fisrtname(rs.getString("c.customer_fisrtname"));
				System.out.println(rs.getString("c.customer_fisrtname"));
				u.setCustomer_lastname(rs.getString("c.customer_lastname"));
				u.setCustomer_email(rs.getString("c.customer_email"));
				u.setCustomer_mobile(rs.getLong("c.customer_mobile"));
				u.setCity_name(rs.getString("d.city_name"));
				u.setState_name(rs.getString("s.state_name"));
				System.out.println("hi111");
				u1.add(u);
			}

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return u1;
	}
	
	public User fetchdata(User u)
	{
		String query="SELECT c.customer_fisrtname,c.customer_lastname,c.customer_email,c.customer_mobile,d.city_name,s.state_name FROM customer c\r\n"
				+ "INNER JOIN areatable a\r\n"
				+ "on c.area_id=a.area_id\r\n"
				+ "INNER JOIN citytable d\r\n"
				+ "ON a.city_id=d.city_id\r\n"
				+ "INNER JOIN statetable s\r\n"
				+ "ON d.state_id=s.state_id\r\n"
				+ "WHERE customer_email=?";
		try
		{
			Connection conn=DBConnection.createConnection();
			PreparedStatement st =conn.prepareStatement(query);
			st.setString(1, u.getCustomer_email());
			ResultSet rs=st.executeQuery();
			System.out.println("hi111");
			while(rs.next())
			{
				u.setCustomer_fisrtname(rs.getString("c.customer_fisrtname"));
				u.setCustomer_lastname(rs.getString("c.customer_lastname"));
				u.setCustomer_email(rs.getString("c.customer_email"));
				u.setCustomer_mobile(rs.getLong("c.customer_mobile"));
				u.setCity_name(rs.getString("d.city_name"));
				u.setState_name(rs.getString("s.state_name"));
				System.out.println("hi111");
		
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return u;
	}
}
