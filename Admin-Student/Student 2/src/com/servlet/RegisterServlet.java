package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		PrintWriter printWriter=response.getWriter(); 
		String name = request.getParameter("uname");
		String password = request.getParameter("pass");
		String address = request.getParameter("add");
		String standard = request.getParameter("std");
		String phoneNo = request.getParameter("phone");
		String emailID = request.getParameter("email");

		try {
			Class.forName("org.h2.Driver");

			Connection con = DriverManager.getConnection(" jdbc:h2:~/projectSMU", "aniket", "1234");

			PreparedStatement preparedStatement = con.prepareStatement("insert into details values(?,?,?,?,?,?)");
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, address);
			preparedStatement.setString(4, phoneNo);
			preparedStatement.setString(5, emailID);
			preparedStatement.setString(6, standard);
			
			preparedStatement.executeUpdate();
			
			printWriter.print("<center><b>Registered Successfully...!!!   Please Login </b></center>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/default.jsp");
			requestDispatcher.include(request, response);
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
