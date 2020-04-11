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
<title>Delete Profile</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO COLLEGE</p></td></tr></table>
</header>
<style>
body{
background-color:rgb(300,300,300);
}
footer{
background-color:rgb(150,150,150);
}
table{
margin-left: 250px;
}

td{
font-family:serif; 
font-size: 20px;
}
span{
font-family: serif; font-size:22px;
}
</style>
<script>
function goBack() {
    window.history.back()
}
</script>
</head>
<body>
<center><img width="1000" height="200" alt="College.jpg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<button onclick="goBack()" style="font-family:serif; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Go Back to HomePage</button>
<p style="padding-left:200px ; font-family:serif; font-size: 30px;"><b>Delete Your Profile</b></p>
<%
Cookie ck[]=request.getCookies();
String c=ck[0].getValue();
try{
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava","niit", "1234");
	PreparedStatement preparedStatement = con.prepareStatement("select * from student where name='"+ck[0].getValue()+"'");
	out.println("<table width=50% height=50>");
	ResultSet rs=preparedStatement.executeQuery();
	while(rs.next())
	{
		out.print("<tr>");
		out.println("<td><center><u>UserName</u> :  "+rs.getString(1)+"</center></td>");
		out.print("<td><center><u>Standard</u> :  "+rs.getString(6)+"</center></td></tr><tr></tr>");
		out.println("<tr></tr><tr><td><center><u>Address</u> :  "+rs.getString(3)+"</center></td>");
		out.print("<td><center><u>Contact</u> :  "+rs.getString(4)+"</center></td>");
		out.print("<td><center><u>E-Mail</u> :  "+rs.getString(5)+"</center></td>");
		out.print("</tr>");
	}
	out.println("</table>");
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<br>
<p style="padding-left:200px ; font-family:serif; font-size: 30px;"><b>Are You Sure You Want to Delete Your Profile Permanently ?</b></p>
<p style="color:red; padding-left:410px ; font-family:serif; font-size: 20px;"><b><i>NOTE :</i><u> The Profile cannot be Recovered.....</u></b></p>
<br>
<table style="margin-left: 500px;"><tr><td><a href="homepage.jsp"><button style="font-family:serif;  font-size: 20px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Cancel</button></a></td>
<td><form action="DeleteProfileForm.html">
<button style="font-family:serif; font-size: 20px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Delete</button>
</form></td></tr>
</table>
<br>
<br>
<footer><br><a style=" color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">© Tanay Thakar</a><a style="color:white; margin-left: 600px; font-family:serif; padding:12px 38px; font-size: 20px;">Contact : 9869372920</a>
<br>
<a style="color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">Student at NIIT Thane</a><a style="color:white; margin-left: 550px; font-family:serif; padding:12px 38px; font-size: 20px;">E-Mail ID : thakartanay@gmail.com</a>
<br><br>
</footer>
</body>
</html>