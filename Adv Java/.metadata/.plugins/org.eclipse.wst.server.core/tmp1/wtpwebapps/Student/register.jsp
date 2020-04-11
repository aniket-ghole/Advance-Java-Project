<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO  COLLEGE</p></td></tr></table>
</header>
<script>
function goBack() {
    window.history.back()
}
</script>
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
</head>
<body>
<center><img width="1000" height="200" alt="College.jpeg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<form class="form-register" method="post" action="RegisterServlet">
	<div class="form-title-row">
<h1 style="font-family:serif; font-size: 40px; font-weight: bold; margin-left: 580px;">Sign Up</h1>
</div>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Name : </span><br>
<input style="margin-left: 350px;" required type="text" name="uname">
<br><br></label>
</div>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Password : </span><br>
<input style="margin-left: 350px;" required type="password" name="pass">
<br><br></label>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Address : </span><br>
<input style="margin-left: 350px;" required type="text" name="add">
<br><br></label>
</div>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Standard : </span><br>
<input style="margin-left: 350px;" required type="text" name="std">
<br><br></label>
</div>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Mobile No. : </span><br>
<input style="margin-left: 350px;" required type="text" name="phone">
<br><br></label>
</div>
<div class="form-row">
<label>
<span style="margin-left: 350px;">Email : </span><br>
<input style="margin-left: 350px;" required type="text" name="email">
<br><br></label>
</div>
</div>
<div class="form-row">
<label class="form-checkbox">
<input style="color:black; font-size:60px; margin-left: 350px;" type="checkbox" name="checkbox" checked>
<span style="margin-left: 3px;" style="font-size:15px; color:blue;">I agree to the terms and conditions</span>
<br><br></label>
</div>
<div style="margin-left: 450px" class="form-row">
<button style="font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; " type="submit">Sign Up as New User</button>
<button onclick="goBack()" style="margin-left:50px; padding:14px 40px; font-family:serif; font-size: 20px; border-color:black;  " type="button">Cancel</button>
</div>
</form>
<br>
<br>
<%@include file="footer.html" %>
<br><br>
</footer>
</body>
</html>