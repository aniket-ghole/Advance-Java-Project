package com.library;

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
 * Servlet implementation class AdminUpdateLibraryServlet
 */
@WebServlet("/AdminUpdateLibraryServlet")
public class AdminUpdateLibraryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateLibraryServlet() {
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
		String bookid = request.getParameter("bookid");
		String bname = request.getParameter("bname");
		String aname = request.getParameter("aname");
		String pname = request.getParameter("pname");

		try {
			Class.forName("org.h2.Driver");

			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");

			PreparedStatement preparedStatement = con.prepareStatement("update library set bname='"+bname+"',aname='"+aname+"',pname='"+pname+"' where bookid='"+bookid+"'");
			
			int i=preparedStatement.executeUpdate();
		 if (i!=0) {
			 out.print("<center><b>BOOK SUCCESSFULLY UPDATED</b></center>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/adminLibrary.jsp");
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
