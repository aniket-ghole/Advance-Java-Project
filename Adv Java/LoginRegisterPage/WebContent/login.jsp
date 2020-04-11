<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="E:/Adv Java/Projects/Login-Register/CSS/demo.css">
<link rel="stylesheet" href="E:/Adv Java/Projects/Login-Register/CSS/form-login.css">

<title>LOGIN</title>
<style>
body {background-color:lightblue;}
a {margin-left:30px;}
</style>
</head>
<body>
<div class="main-content">
<form action="LoginServlet" method="get">
<div class="form-log-in-with-email">
<div class="form-white-background">
<div class="form-title-row">
<h1 style="color:red; background-color:blue; text-align:center;">Log In</h1>
<h2 style="color:red; background-color:blue; text-align:center;">Here</h2>
</div>
<br>
<div class="form-row">
<label>       
<span>UserName</span>
<input type="text" name="uname">
</label>
</div>
<br>
<div class="form-row">
<label>
<span>Password</span>
<input type="password" name="pass">
</label>
</div>
<br><br>
<div class="form-row">
<button type="submit">Log in</button>
</div>
</div>
</div> 
</form>
</div>
</body>
</html>