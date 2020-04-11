<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function goBack() {
    window.history.back()
}
</script>
<title>Student Home</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px; border:2px; color:rgb(51,51,255); font-family:serif; font-size: 70px;">EUNOIA  JUNIOR  COLLEGE</p></td><td><pre style="padding-left:90px ; font-family:serif; font-size: 20px;"><%!String n;%><p style="padding:1px; background-color:white; color:rgb(255,0,127) ;font-family:serif; font-size: 25px;">Welcome <%= request.getParameter("uname")%></p>
<button onclick="goBack()" style="font-family:serif; font-size: 20px; font-weight:bold; color:red; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Sign Out</button>

<a style="padding:2px; background-color:rgb(229,255,204); color:red ;" href="UpdateProfile.jsp">Update Profile</a>
<a style="padding:2px; background-color:rgb(229,255,204); color:red ;" href="DeleteProfile.jsp">Delete  Profile</a></pre></td></tr></table>
</header>
<style>
footer{
background-color:rgb(102,102,255);
}
body{
background-image: url("College1600.jpg");
background-repeat:no-repeat;
background-attachment:fixed;
background-size:cover;
background-color:rgb(240,240,240);
}
div.polaroid {
  background-color: silver;
  border-radius: 20px; 
  background: !important;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 10px;
}
div.container {
  text-align: center;
  padding-bottom: 2px;
  border-color:red; 
  border-radius: 50px; 
  background: !important;
  font-family:serif; 
  font-size:20px; 
  font-weight:bold; 
  color:graytext;
  text-decoration: blink;
  text-shadow:black;
}
.beta table{
font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
border-collapse: collapse;
width: 100%;
}
.beta td{
border: 1px solid #eed;
padding: 8px;
}
.beta th{
border: 1px solid #eed;
padding: 8px;
padding-top: 12px;
padding-bottom: 12px;
text-align: center;
background-color: #4CAF50;
color: white;
}
.beta tr:nth-child(odd){
background-color: #f2f2f2;
}
.beta tr:nth-child(even){
background-color: #f2f2f2;
}
.beta tr:hover{
background-color: #ddd;
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<br><br><br>
<%!String a;%><%a=request.getParameter("uname"); Cookie ck=new Cookie("name",a); response.addCookie(ck); System.out.println(a);%>
<table align="center">
<tr>
<td align="center"><div class="polaroid" style="width: 65%;"><a href="coursewarepage.jsp"><img src="Courseware.png" alt="Courseware.jpeg" style="width:100%"></a><div class="container"><a href="coursewarepage.jsp"><p>Student Courseware</p></a></div></div></td>
<td align="center"><div class="polaroid" style="width: 40%;"><a href="exampage.jsp"><img src="exam-image.jpg" alt="exam.jpeg" style="width:100%"></a><div class="container"><a href="exampage.jsp"><p>Exam Schedule</p></a></div></div></td>
<td align="center"><div class="polaroid" style="width: 55%;"><a href="librarypage.jsp"><img src="library-1_web.jpg" alt="library.jpeg" style="width:100%"></a><div class="container"><a href="librarypage.jsp"><p>Online Library</p></a></div></div></td>
</tr>
</table>
<br><br><br>
<h2 style="font-family:serif; font-size: 40px; font-weight:bold; color:threedface; font-weight:500; "><center><b>BACHMATES</b></center></h2>
<%
try {
	Class.forName("org.h2.Driver");

	Connection con = DriverManager.getConnection(" jdbc:h2:~/projectSMU", "aniket", "1234");

	PreparedStatement preparedStatement = con.prepareStatement("select * from details where standard  IN (select standard from details where name='"+request.getParameter("uname")+"') except select * from details where name='"+request.getParameter("uname")+"'");
	out.println("<table class='beta' align=center border=7 width=70% height=70%");
	out.print("<tr><th>Student Name</th><th>Phone</th><th>Email</th></tr>");
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
%>
<br>
<br>
<footer><br><a style=" color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">© Aniket </a><a style="color:white; margin-left: 600px; font-family:serif; padding:12px 38px; font-size: 20px;">Contact : 987654321</a>
<br>
<a style="color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">Student at SMU </a><a style="color:white; margin-left: 550px; font-family:serif; padding:12px 38px; font-size: 20px;">E-Mail ID : aniket123@gmail.com</a>
<br><br>
</footer>
</body>
</html>