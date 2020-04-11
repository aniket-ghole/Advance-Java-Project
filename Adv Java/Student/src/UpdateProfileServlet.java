

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
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileServlet() {
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
		PrintWriter out=response.getWriter();
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String standard = request.getParameter("standard");

		try {
			System.out.println(name);
			System.out.println(address);
			System.out.println(phone);
			System.out.println(email);
			System.out.println(standard);
			Class.forName("org.h2.Driver");
			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");
			PreparedStatement preparedStatement = con.prepareStatement("update student set address='"+address+"', phone='"+phone+"', email='"+email+"', standard='"+standard+"' where name='"+name+"'");
			int i=preparedStatement.executeUpdate();
		 if (i!=0) {
			 out.print("<center><b>PROFILE SUCCESSFULLY UPDATED</b></center>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/updateprofile.jsp");
				requestDispatcher.include(request, response);
		} else {
			out.println("<center><b>NO UPDATIONS</b></center>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/updateprofile.jsp");
			requestDispatcher.include(request, response);

		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}