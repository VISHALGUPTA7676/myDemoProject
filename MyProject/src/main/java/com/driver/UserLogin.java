package com.driver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/logins")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User u=new User();
		UserDao do1=new UserDao();
		String action = request.getParameter("action");
		System.out.println(action);

		String EMAIl=request.getParameter("email");
		String PasWorD=request.getParameter("pasw");
		u.setCustomer_email(EMAIl);
		System.out.println(EMAIl);
		System.out.println(u.getCustomer_email());
		
		if(do1.loginCheck(EMAIl, PasWorD))
		{
			u=do1.fetchName(u.getCustomer_email());
			//System.out.println(u.getCustomer_email());
			String str=u.getCustomer_fisrtname();
			String str2=u.getCustomer_lastname();
			System.out.println(str);
			System.out.println(str2);

			char fname=str.charAt(0);
			char lname=str2.charAt(0);

			HttpSession session=request.getSession();
			session.setAttribute("FName",fname);
			session.setAttribute("LName",lname);
			session.setAttribute("USER", str);
			u.setCustomer_email(EMAIl); 
			System.out.println("hi222"); 
			/*
			 * ArrayList<User> u1=new ArrayList<User>(); u1=do1.fetchUser(EMAIl); session
			 * .setAttribute("Array",u1);
			 */	u=do1.fetchdata(u); System.out.println(u.getCity_name());

			session.setAttribute("CFN", u.getCustomer_fisrtname());
			session.setAttribute("CLN", u.getCustomer_lastname());
			session.setAttribute("MN", u.getCustomer_mobile());
			session.setAttribute("DN", u.getCity_name());
			session.setAttribute("SN", u.getState_name());
			session .setAttribute("EML", u.getCustomer_email());
			
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("index1.jsp");
		}	
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		session.removeAttribute("USER");
		session.invalidate();
		response.sendRedirect("index1.jsp");

	}

}
