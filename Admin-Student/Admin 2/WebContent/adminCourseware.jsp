<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Courseware</title>
<header>
<table align="center"><tr><td><%@include file="logo.html"%></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">EUNOIA  JUNIOR  COLLEGE</p></td></tr></table>
</header>
<style>
body{
background-color:rgb(240,240,240);
}
footer{
background-color:rgb(102,102,255);
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
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
.beta tr:nth-child(even){
background-color: #f2f2f2;
}
.beta tr:hover{
background-color: #ddd;
}
</style>
</head>
<body>
<center><img width="1000" height="200" alt="College.jpeg" src="eunoia-junior-college.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<form action="adminHome.jsp">
<input type="submit" value="Go Back to Home Page" style="font-family:serif; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px ">
</form>
<br><br>
<a href=adminNewCourseware.jsp><button style="margin-left: 250px; font-family:serif; padding:12px 38px; font-size: 20px; border-color:black; border-radius: 12px;" type="submit">Add a New Subject to Courseware</button></a>
<a href=adminUpdateCourseware.jsp><button style="margin-left: 120px; font-family:serif; padding:12px 38px; font-size: 20px; border-color:black; border-radius: 12px;" type="submit">Update a Subject from Courseware</button></a><br><br> 
<br><br><a href=adminDeleteCourseware.jsp><button style="margin-left: 490px; font-family:serif; padding:12px 38px; font-size: 20px; border-color:black; border-radius: 12px;" type="submit">Delete a Subject from Courseware</button></a>

<br><br>


<%

try {
	Class.forName("org.h2.Driver");

	Connection con = DriverManager.getConnection(" jdbc:h2:~/projectSMU", "aniket", "1234");

	PreparedStatement preparedStatement = con.prepareStatement("select * from courseware order by standard");
	out.println("<h2><center><b>Student Courseware</b></center></h2>");
	out.println("<table class='beta' align=center border=7 width=70% height=70%");
	out.print("<tr><th>SUBJECT CODE</th><th>SUBJECT NAME</th><th>STANDARD</th></tr>");
	ResultSet rs=preparedStatement.executeQuery();
	while(rs.next())
	{
		out.print("<tr>");
		out.print("<td><center>"+rs.getString(1)+"</center></td>");
		out.print("<td><center>"+rs.getString(2)+"</center></td>");
		out.print("<td><center>"+rs.getString(3)+"</center></td>");
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
<footer><br><a style=" color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">© Aniket</a><a style="color:white; margin-left: 600px; font-family:serif; padding:12px 38px; font-size: 20px;">Contact : 987654321</a>
<br>
<a style="color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">Student at SMU</a><a style="color:white; margin-left: 550px; font-family:serif; padding:12px 38px; font-size: 20px;">E-Mail ID : aniket123@gmail.com</a>
<br><br>
</footer>
</body>
</html>