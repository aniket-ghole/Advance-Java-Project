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
<title>Student Exam Schedule</title>
<header><table class="aplha" align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO  COLLEGE</p></td></tr></table>
</header>
<style>
body{
background-color:rgb(300,300,300);
}
footer{
background-color:rgb(150,150,150);
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
<script>
function goBack() {
    window.history.back()
}
</script>
</head>
<body>
<center><img width="1000" height="200" alt="College.jpeg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<button onclick="goBack()" style="font-family:serif; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Go Back to HomePage</button>
<%

try {
	Cookie ck[]=request.getCookies();
	String name=ck[0].getValue();
	System.out.println(name);
	Class.forName("org.h2.Driver");

	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");

	PreparedStatement preparedStatement = con.prepareStatement("select * from exam where standard  IN (select standard from student where name='"+name+"')");
	out.println("<h2><center><b>Exam Schedule</b></center></h2>");
	out.println("<table class='beta' align=center border=7 width=70% height=70%");
	out.print("<tr><th>EXAM TYPE</th><th>SUBJECT</th><th>DATE</th><th>DURATION</th></tr>");
	ResultSet rs=preparedStatement.executeQuery();
	while(rs.next())
	{
		out.print("<tr>");
		out.print("<td><center>"+rs.getString(1)+"</center></td>");
		out.print("<td><center>"+rs.getString(3)+"</center></td>");
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
<%@include file="footer.html" %>
<br>
<br>
</footer>
</body>
</html>