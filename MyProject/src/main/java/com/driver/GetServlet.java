package com.driver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;
/*import com.sun.tools.javac.util.List;*/

/**
 * Servlet implementation class GetServlet
 */
@WebServlet("/registraion")
public class GetServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		String FIRST_NAME=request.getParameter("fname");
		String LAST_NAME=request.getParameter("lname");
		String GENDER=request.getParameter("gender");
		//String db=request.getParameter("dob");
		//Date DOB=new SimpleDateFormat("dd/mm/yyyy").parse(db);
		long MOBILE=Long.parseLong(request.getParameter("mobile"));
		String EMAIL=request.getParameter("email");
		String PasWord=request.getParameter("pasw");
		int HOUSE_NO=Integer.parseInt(request.getParameter("houseno"));
		String Society_name=request.getParameter("buldiname");
		String Area_Name=request.getParameter("areaname");
		int Area_pin=Integer.parseInt(request.getParameter("pincode"));
		//String City=request.getParameter("city");
		int State=Integer.parseInt(request.getParameter("state"));
		
		
		//Create of User class Object
		User u1=new User();
		//Create of UserDao class Object
		UserDao do1=new UserDao();
		PrintWriter out=response.getWriter();
		
		
		u1.setCustomer_fisrtname(FIRST_NAME);
		u1.setCustomer_lastname(LAST_NAME);
		u1.setCustomer_gender(GENDER);
		u1.setCustomer_mobile(MOBILE);
		if(do1.verifyEmail(EMAIL))
		{
			System.out.println("inin");
			
//			  HttpSession session=request.getSession();
//			  session.setAttribute("Error","This Emial Is Already Exitis");
			 
			out.print("Email Already Exits Please Go Back And Register With Valid Email Id");
			//response.sendRedirect("index1.jsp"); 
		}
		else
		{
		u1.setCustomer_email(EMAIL);
		u1.setCustomer_password(PasWord);
		u1.setHouse_number(HOUSE_NO);
		u1.setBuilding_name(Society_name);
		u1.setArea_name(Area_Name);
		u1.setArea_pincode(Area_pin);
		u1.setCity_name(request.getParameter("city"));
		
		//u1.setState_name(State);
		u1.setState_id(State);
		
		//u1.setState_id(StateId);
	
		//UserDao dao=UserDao.fetchState();
		
		
		System.out.println(LAST_NAME);
		System.out.println(FIRST_NAME);
		System.out.println(GENDER);
		System.out.println(EMAIL);
		System.out.println(MOBILE);
		System.out.println(PasWord);
		System.out.println(HOUSE_NO);
		System.out.println(Society_name);
		System.out.println(Area_Name);
		System.out.println(u1.getCity_name());
		System.out.println(State);
		
		
		
		
		/*This method belongs to registration for user*/
		if(do1.checkState(u1.getCity_name()))
		{
			
			System.out.println("CityName Match With Exiting Table");
			
			//To Call Method fetchCityId for Fetching CityId 
			u1=do1.fetchCityId(u1.getCity_name());
			
			//Insert AreaTable Data By Calling This Method
			do1.insertarea(u1.getCity_id(),Area_pin,HOUSE_NO,Society_name,Area_Name);
			
			//Calling fetchAreaId method for getting Area_ID
			u1=do1.fetchAreaId(Area_pin, Area_Name, Society_name, HOUSE_NO);
			
			//Insert User Data into by Using this Method
			do1.insertuser(u1.getArea_id(),FIRST_NAME,LAST_NAME,GENDER,MOBILE,EMAIL,PasWord);
			response.sendRedirect("index1.jsp");
		}
		else
		{
			
			System.out.println("Not Matched");
			do1.insertcity(u1.getCity_name(),u1.getState_id()); 
			
			//To Call Method fetchCityId for Fetching CityId
			u1=do1.fetchCityId(u1.getCity_name()); 
			
			//Insert AreaTable Data By Calling This Method
			do1.insertarea(u1.getCity_id(),Area_pin,HOUSE_NO,Society_name,Area_Name); 
			
			//Calling fetchAreaId method for getting Area_ID
			u1=do1.fetchAreaId(Area_pin, Area_Name, Society_name, HOUSE_NO); 
		
			//Insert User Data into by Using this Method
			do1.insertuser(u1.getArea_id(),FIRST_NAME,LAST_NAME,GENDER,MOBILE,EMAIL,PasWord);
			response.sendRedirect("index1.jsp");
		}	
		
		
	}
}
}
