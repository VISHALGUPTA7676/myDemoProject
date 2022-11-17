package com.none;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Product;
import com.dao.ProductDao;

/**
 * Servlet implementation class Jana
 */
@WebServlet("/gona")
public class Jana extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jana() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * ProductDao pd=new ProductDao(); ArrayList<Product> p1=new
		 * ArrayList<Product>(); p1=pd.allProdo(); Product name=new Product(); for(int
		 * i=0;i<p1.size();i++) { name=p1.get(i);
		 * System.out.println(name.getProduct_image());
		 * System.out.println(" "+name.getProduct_name()); } HttpSession
		 * session=request.getSession(); session.setAttribute("Arrayss",p1);
		 * response.sendRedirect("Welcome.jsp");
		 */
		
	}

}
