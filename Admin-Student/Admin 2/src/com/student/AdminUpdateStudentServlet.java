package com.student;

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
 * Servlet implementation class AdminUpdateStudentServlet
 */
@WebServlet("/AdminUpdateStudentServlet")
public class AdminUpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateStudentServlet() {
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
		PrintWriter out=response.getWriter();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String standard = request.getParameter("standard");

		try {
			Class.forName("org.h2.Driver");

			Connection con = DriverManager.getConnection(" jdbc:h2:~/projectSMU", "aniket", "1234");

			PreparedStatement preparedStatement = con.prepareStatement("update details set password='"+password+"',address='"+address+"',phone='"+phone+"',email='"+email+"' where name='"+name+"' and standard='"+standard+"'");
			
			int i=preparedStatement.executeUpdate();
		 if (i!=0) {
			 out.print("<center><b>STUDENT SUCCESSFULLY UPDATED</b></center>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/adminStudent.jsp");
				requestDispatcher.include(request, response);
		} else {
			out.println("<center><b>NO UPDATIONS</b></center>");

		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
