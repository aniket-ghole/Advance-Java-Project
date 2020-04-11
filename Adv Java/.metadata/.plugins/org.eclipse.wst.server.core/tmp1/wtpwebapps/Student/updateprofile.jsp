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
<title>Update Profile</title>
<header><table class="aplha"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO  COLLEGE</p></td></tr></table>
</header>
<style>
footer{
background-color:rgb(150,150,150);
}
body{
background-color:rgb(300,300,300);
}
td{
font-family:serif; 
font-size: 20px;
}
table{
margin-left: 250px;
}
span{
font-family: serif; font-size:22px;
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}

}
span{
font-family: serif; font-size:25px;
}
input[type=text],input[type=password]{
width: 50%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
font-size: 15px;
}
label{
text-shadow: 1px 1px gray;
}
</style>
<script>
function goBack() {
    window.history.back()
}
</script>
</head>
<body>
<center><img width="1000" height="200" alt="collegeimg.jpg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<button onclick="goBack()" style="font-family:serif; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Go Back to HomePage</button>
<p style="padding-left:200px ; font-family:serif; font-size: 30px;"><b> Profile</b></p>
<%
out.print("in update profile");
Cookie ck[]=request.getCookies();
String c=ck[0].getValue();
try{
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/AdvJava", "niit", "1234");
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
<p style="padding-left:200px ; font-family:serif; font-size: 30px;"><b>Update Profile </b></p>
<form style="margin-left:250px " action=UpdateProfileServlet method=post>
<div class="form-row">
<label>
<span>Name : </span>
<input required style="margin-left:70px" type="text" name="name" value="<%String n=c;out.println(n);%>">
<br><br></label>
</div>
<label><span>Address : </span>
<input required style="margin-left:50px" type="text" name="address">
<br><br></label>
<label><span>Phone : </span>
<input required style="margin-left:70px" type="text" name="phone">
<br><br></label>
<label><span>Email : </span>
<input required style="margin-left:71px" type="text" name="email">
<br><br></label>
<label><span>Standard : </span>
<input required style="margin-left:48px" type="text" name="standard">
<br><br></label>
<button style="font-family:serif; font-size: 20px; border-color:black; " type="submit">UPDATE</button>
</form>
<br>
<br>
<%@include file="footer.html" %>
</body>
</html>