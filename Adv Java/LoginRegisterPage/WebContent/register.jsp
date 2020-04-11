<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="E:/Adv Java/Projects/Login-Register/CSS/demo.css">
<link rel="stylesheet" href="E:/Adv Java/Projects/Login-Register/CSS/form-register.css">
</head>
<body>
<form class="form-register" method="get" action="RegisterServlet">
<div class="form-register-with-email">
<div class="form-white-background">
<div class="form-title-row">
<h1>Create an account</h1>
</div>
<div class="form-row">
<label>
<span>Name</span>
<input type="text" name="uname">
</label>
</div>
<div class="form-row">
<label>
<span>Password</span>
<input type="password" name="pass">
</label>
<div class="form-row">
<label>
<span>Address</span>
<input type="text" name="add">
</label>
</div>
<div class="form-row">
<label>
<span>Mobile Number</span>
<input type="text" name="phone">
</label>
</div>
<div class="form-row">
<label>
<span>E-Mail</span>
<input type="text" name="email">
</label>
</div>
</div>
<div class="form-row">
<label class="form-checkbox">
<input type="checkbox" name="checkbox" checked>
<span>I agree to the terms and conditions</span>
</label>
</div>
<div class="form-row">
<button type="submit">Register as New User</button>
</div>
</div>
</div>
</form>
</body>
</html>