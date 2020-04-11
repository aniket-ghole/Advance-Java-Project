package com.courseware;

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
 * Servlet implementation class AdminNewCoursewareServlet
 */
@WebServlet("/AdminNewCoursewareServlet")
public class AdminNewCoursewareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNewCoursewareServlet() {
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
		String subcode = request.getParameter("subcode");
		String sname = request.getParameter("sname");
		String standard = request.getParameter("standard");

		try {
			Class.forName("org.h2.Driver");

			Connection con = DriverManager.getConnection("jdbc:h2:~/projectSMU", "aniket", "1234");

			PreparedStatement preparedStatement = con.prepareStatement("insert into courseware values(?,?,?)");
			preparedStatement.setString(1, subcode);
			preparedStatement.setString(2, sname);
			preparedStatement.setString(3, standard);
			
			preparedStatement.executeUpdate();
			
			out.print("<center><b>NEW SUBJECT SUCCESSFULLY ADDED</b></center>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/adminCourseware.jsp");
			requestDispatcher.include(request, response);
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
