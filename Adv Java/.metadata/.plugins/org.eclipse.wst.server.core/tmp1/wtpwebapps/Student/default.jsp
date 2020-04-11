<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sign In</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO  COLLEGE</p></td></tr></table>
</header>
<style>
body{
background-color:rgb(300,300,300);
}
footer{
background-color:rgb(150,150,150);
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
span{
font-family: serif; font-size:25px;margin-left: 350px;
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
margin-left: 350px;
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<center><img width="1000" height="200" alt="collegeimg.jpg" src="collegeimg.jpg" border=1px title="College.jpg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<div class="main-content">
	<form action="LoginServlet" method="post">
			<div class="form-title-row">
					<h1 style="font-family:serif; font-size: 40px; font-weight: bold; margin-left: 580px;">Sign In</h1>
			</div>
			<div class="form-row">
				<label>       
				<span>UserName : </span><br>
				<input required type="text" name="uname">
				<br><br></label>
			</div>
			<div class="form-row">
				<label>
				<span>Password : </span><br>
				<input required type="password" name="pass">
				<br><br></label>
			</div>
			<div class="form-row">
				<button style="margin-left: 580px; font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; " type="submit"><b>Sign In</b></button>
				<p style="margin-left:640px ;font-family:serif; font-size:20px; color:teal; font: italic;"></p>
			</div>	
			</form>  <a href="register.jsp"><button style="margin-left: 580px; font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; " type="submit"><b>Sign Up</b></button></a> </div>
<br>
<br>
<%@include file="footer.html" %>
<br><br>
</footer>
</body>
</html>