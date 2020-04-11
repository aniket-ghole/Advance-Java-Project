package com;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*PrintWriter printWriter = response.getWriter();
		String name = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean flag=true;
		try {
			System.out.println("in try block");
			
			Class.forName("org.h2.Driver");
			
			System.out.println("class accepted");
			
			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");
			
			System.out.println("connected to database");
			
			PreparedStatement stmt = con.prepareStatement("select * from details where name=? and password=?");
			
			System.out.println("Query load");
			
			stmt.setString(1,name);
			
			stmt.setString(2,password);
			
			System.out.println("parameter load from database");
			
			ResultSet rs = stmt.executeQuery();
			
			System.out.println("query execution");
			
			flag=rs.next();
			
			System.out.println("next()");
				
		if(flag)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Welcome.html");
			rd.forward(request, response);
		}
		else
		{	
			
			
			printWriter.print("<b>Invalid login!!! Plz login again</b>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.html");
			requestDispatcher.include(request, response);
		}
		con.close();
		}
		catch(Exception e) 
		{
		}
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter printWriter = response.getWriter();
		String name = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean flag=true;
		try {
			System.out.println("in try block");
			
			Class.forName("org.h2.Driver");
			
			System.out.println("class accepted");
			
			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");
			
			System.out.println("connected to database");
			
			PreparedStatement stmt = con.prepareStatement("select * from details where name=? and password=?");
			
			System.out.println("Query load");
			
			stmt.setString(1,name);
			
			stmt.setString(2,password);
			
			System.out.println("parameter load from database");
			
			ResultSet rs = stmt.executeQuery();
			
			System.out.println("query execution");
			
			flag=rs.next();
			
			System.out.println("next()");
				
		if(flag)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
			rd.forward(request, response);
		}
		else
		{	
			/*RequestDispatcher rd = request.getRequestDispatcher("/Error.html");
			rd.forward(request, response);*/
			
			printWriter.print("<b>Invalid login!!! Plz login again</b>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
			requestDispatcher.include(request, response);
		}
		con.close();
		}
		catch(Exception e) {
		}
		
	
	}
	
}


