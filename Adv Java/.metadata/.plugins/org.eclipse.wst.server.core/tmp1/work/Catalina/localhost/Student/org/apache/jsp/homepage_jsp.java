/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.1
 * Generated at: 2018-02-16 14:01:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

String n;
String a;
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/logo.html", Long.valueOf(1518771457036L));
    _jspx_dependants.put("/footer.html", Long.valueOf(1518788538229L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.servlet.annotation.WebServlet");
    _jspx_imports_classes.add("javax.servlet.http.HttpServletRequest");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("javax.servlet.http.HttpServlet");
    _jspx_imports_classes.add("javax.servlet.ServletException");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("javax.servlet.http.HttpServletResponse");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<title>Student Home Page</title>\r\n");
      out.write("<header><table align=\"center\"><tr><td>");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title></title><!-- welcome page logo -->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<img src=\"logo.jpg\" alt=logo width=200px height=200px align=\"left\" border=\"1px\" style=\"border-radius:15px;\">\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("</td><td style=\"padding-left: 10px; padding-right: 10px;\"></td>\r\n");
      out.write("<td><p style=\"padding-left:20px; border:2px; color:rgb(51,51,255); font-family:serif; font-size: 70px;\">AGO  COLLEGE</p></td><td><pre style=\"padding-left:90px ; font-family:serif; font-size: 20px;\">");
      out.write("<p style=\"padding:1px; background-color:white; color:rgb(255,0,127) ;font-family:serif; font-size: 25px;\">Welcome ");
      out.print( request.getParameter("uname"));
      out.write("</p>\r\n");
      out.write("\r\n");
      out.write("<button onclick=\"goBack()\" style=\"font-family:serif; font-size: 20px; font-weight:bold; color:red; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px \" type=\"submit\">Sign Out</button>\r\n");
      out.write("<br><br>\r\n");
      out.write("<button onclick=\"window.location.href='updateprofile.jsp'\" style=\"font-family:serif; font-size: 20px; font-weight:bold; color:blue; border-color:black; padding-bottom:1px \" type=\"submit\">update profile</button>\r\n");
      out.write("<br>\r\n");
      out.write("<button onclick=\"window.location.href='deleteprofile.jsp'\" style=\"font-family:serif; font-size: 20px; font-weight:bold; color:blue; border-color:black; padding-bottom:1px \" type=\"submit\">delete profile</button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</pre>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</header>\r\n");
      out.write("<style>\r\n");
      out.write("footer{\r\n");
      out.write("background-color:rgb(150,150,150);\r\n");
      out.write("}\r\n");
      out.write("body{\r\n");
      out.write("background-image:url(\"\");\r\n");
      out.write("background-repeat:no-repeat;\r\n");
      out.write("background-attachment:fixed;\r\n");
      out.write("background-size:cover;\r\n");
      out.write("background-color:rgb(300,300,300);\r\n");
      out.write("}\r\n");
      out.write("div.polaroid {\r\n");
      out.write("  background-color: silver;\r\n");
      out.write("  border-radius: 20px; \r\n");
      out.write("  background: !important;\r\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\r\n");
      out.write("  margin-bottom: 10px;\r\n");
      out.write("}\r\n");
      out.write("div.container {\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  padding-bottom: 2px;\r\n");
      out.write("  border-color:red; \r\n");
      out.write("  border-radius: 50px; \r\n");
      out.write("  background: !important;\r\n");
      out.write("  font-family:serif; \r\n");
      out.write("  font-size:20px; \r\n");
      out.write("  font-weight:bold; \r\n");
      out.write("  color:graytext;\r\n");
      out.write("  text-decoration: blink;\r\n");
      out.write("  text-shadow:black;\r\n");
      out.write("}\r\n");
      out.write(".beta table{\r\n");
      out.write("font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n");
      out.write("border-collapse: collapse;\r\n");
      out.write("width: 100%;\r\n");
      out.write("}\r\n");
      out.write(".beta td{\r\n");
      out.write("border: 1px solid #eed;\r\n");
      out.write("padding: 8px;\r\n");
      out.write("}\r\n");
      out.write(".beta th{\r\n");
      out.write("border: 1px solid #eed;\r\n");
      out.write("padding: 8px;\r\n");
      out.write("padding-top: 12px;\r\n");
      out.write("padding-bottom: 12px;\r\n");
      out.write("text-align: center;\r\n");
      out.write("background-color: #4CAF50;\r\n");
      out.write("color: white;\r\n");
      out.write("}\r\n");
      out.write(".beta tr:nth-child(odd){\r\n");
      out.write("background-color: #f2f2f2;\r\n");
      out.write("}\r\n");
      out.write(".beta tr:nth-child(even){\r\n");
      out.write("background-color: #f2f2f2;\r\n");
      out.write("}\r\n");
      out.write(".beta tr:hover{\r\n");
      out.write("background-color: #ddd;\r\n");
      out.write("}\r\n");
      out.write("button:hover {\r\n");
      out.write("box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("function goBack() {\r\n");
      out.write("    window.history.back()\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<br><br><br>\r\n");
a=request.getParameter("uname"); Cookie ck=new Cookie("name",a); response.addCookie(ck); System.out.println(a);
      out.write("\r\n");
      out.write("<table align=\"center\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\"><div class=\"polaroid\" style=\"width: 65%;\"><a href=\"coursewarepage.jsp\"><img src=\"courseimg.png\" alt=\"Courseware.jpg\" style=\"width:100%\"></a><div class=\"container\"><a href=\"coursewarepage.jsp\"><p>Courseware</p></a></div></div></td>\r\n");
      out.write("<td align=\"center\"><div class=\"polaroid\" style=\"width: 65%;\"><a href=\"exampage.jsp\"><img src=\"examimg.jpg\" alt=\"exam.jpg\" style=\"width:100%\"></a><div class=\"container\"><a href=\"exampage.jsp\"><p>Exam Schedule</p></a></div></div></td>\r\n");
      out.write("<td align=\"center\"><div class=\"polaroid\" style=\"width: 65%;\"><a href=\"librarypage.jsp\"><img src=\"libimg.jpg\" alt=\"library.jpeg\" style=\"width:100%\"></a><div class=\"container\"><a href=\"librarypage.jsp\"><p> Library</p></a></div></div></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br><br><br>\r\n");
      out.write("\r\n");

try {
	Class.forName("org.h2.Driver");

	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");

	PreparedStatement preparedStatement = con.prepareStatement("select * from student where standard  IN (select standard from student where name='"+request.getParameter("uname")+"') except select * from student where name='"+request.getParameter("uname")+"'");
	//out.println("<table class='beta' align=center border=7 width=70% height=70%");
	//out.print("<tr><th>Student Name</th><th>Phone</th><th>Email</th></tr>");
	ResultSet rs=preparedStatement.executeQuery();
	while(rs.next())
	{
		out.print("<tr>");
		out.print("<td><center>"+rs.getString(1)+"</center></td>");
		out.print("<td><center>"+rs.getString(4)+"</center></td>");
		out.print("<td><center>"+rs.getString(5)+"</center></td>");
		out.print("</tr>");
	}
	out.println("</table>");
	con.close();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 

      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<footer>\r\n");
      out.write("\r\n");
      out.write("<a style=\" color:black; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;\"> Aniket Ghole</a>\r\n");
      out.write("<a style=\"color:black; margin-left: 210px; font-family:serif; padding:12px 38px; font-size: 20px;\">Contact 0123456789</a>\r\n");
      out.write("\r\n");
      out.write("<a style=\"color:black; margin-left: 500px; font-family:serif; padding:12px 38px; font-size: 20px;\">Student at NIIT Thane</a>\r\n");
      out.write("<a style=\"color:black; margin-left: 500px; font-family:serif; padding:12px 38px; font-size: 20px;\">Email ID aniketghole@outlook.com </a>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<br><br>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
