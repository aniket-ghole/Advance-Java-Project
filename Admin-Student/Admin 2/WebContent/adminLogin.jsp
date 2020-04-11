<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<header>
<table align="center"><tr><td><%@include file="logo.html"%></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<header><td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">EUNOIA  JUNIOR  COLLEGE</p></td></tr></table>
</header>
<style>
body{
background-color:rgb(240,240,240);
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
footer{
background-color:rgb(102,102,255);
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
</head>
<body>
<center><img width="1000" height="200" alt="College.jpeg" src="eunoia-junior-college.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<h1 style="font-family:serif; font-size: 40px; font-weight: bold; margin-left: 510px;">ADMIN  LOGIN</h1>
<br><br>
<form action=AdminLoginServlet method=post>
<label>       
<span>USERNAME : </span><br>
<input required type="text" name="aname"> 
<br><br></label>
<label>       
<span>PASSWORD : </span><br>
<input required type="password" name="apass">
<br><br></label>
<button style="margin-left: 580px; font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; border-radius: 12px;" type="submit">LOGIN</button>
</form>
<br>
<br>
<footer><br><a style=" color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">© Aniket</a><a style="color:white; margin-left: 600px; font-family:serif; padding:12px 38px; font-size: 20px;">Contact : 987654321</a>
<br>
<a style="color:white; margin-left: 100px; font-family:serif; padding:12px 38px; font-size: 20px;">Student at SMU</a><a style="color:white; margin-left: 550px; font-family:serif; padding:12px 38px; font-size: 20px;">E-Mail ID : aniket123@gmail.com</a>
<br><br>
</footer>
</body>
</html>
