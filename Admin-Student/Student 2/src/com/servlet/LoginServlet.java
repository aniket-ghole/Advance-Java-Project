package com.servlet;

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
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		PrintWriter printWriter = response.getWriter();
		String name = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean flag=true;
		try {
			Class.forName("org.h2.Driver");
			Connection con = DriverManager.getConnection(" jdbc:h2:~/projectSMU", "aniket", "1234");
			PreparedStatement stmt = con.prepareStatement("select * from details where name=? and password=?");
			stmt.setString(1,name);
			stmt.setString(2,password);
			ResultSet rs = stmt.executeQuery();
			flag=rs.next();
			
			if(flag)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/homepage.jsp");
			rd.forward(request, response);
		}
		else
		{
			printWriter.print("<center><b>Invalid login!!! Plz login again</b></center>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/default.jsp");
			requestDispatcher.include(request, response);
		}
		con.close();
		}
		catch(Exception e) {
		}
		
	}
	

}
