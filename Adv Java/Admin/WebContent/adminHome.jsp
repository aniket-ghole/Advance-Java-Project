<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Homepage</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px; border:2px; color:rgb(51,51,255); font-family:serif; font-size: 70px;">AGO COLLEGE</p></td><td><pre style="padding-left:90px ; font-family:serif; font-size: 20px;"><p style="padding:1px; background-color:white; color:rgb(255,0,127) ;font-family:serif; font-size: 22px;">Logged In
as <a style="padding:1px; background-color:white; color:rgb(51,51,255) ;font-family:serif; font-size: 25px;">Admin</a></p><p style="padding:3px; background-color:white; color:rgb(255,0,127) ;font-family:serif; font-size: 21px;">Welcome</p><form action="adminLogin.jsp">
<input type="submit" value="Sign Out" style="font-family:serif; font-size: 20px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px ">
</form></tr></table>
</header>
<style>
body{
background-image: url("collegeimg.jpg");
background-repeat:no-repeat;
background-attachment:fixed;
background-size:cover;
background-color:rgb(240,240,240);
}
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
input[type=submit]:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
div.polaroid {
  background-color: white;
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
footer{
background-color:rgb(150,150,150);
}
</style>
<script>
function goBack() {
    window.history.back()
}
</script>
</head>
<body>
<br><br><br>
<table align="center">
<tr>
<td align="center"><div class="polaroid" style="width: 70%;"><a href="adminStudent.jsp"><img src="logo.jpg" alt="Student.jpg" style="width:100%"></a><div class="container"><a href="adminStudent.jsp"><p>Manage Students</p></a></div></div></td>
<td align="center"><div class="polaroid" style="width: 50%;"><a href="adminCourseware.jsp"><img src="coourseimg.png" alt="Courseware.jpg" style="width:100%"></a><div class="container"><a href="adminCourseware.jsp"><p>Manage Courseware</p></a></div></div></td>
<td align="center"><div class="polaroid" style="width: 40%;"><a href="adminExam.jsp"><img src="examimg.jpg" alt="Exam.jpg" style="width:100%"></a><div class="container"><a href="adminExam.jsp"><p>Manage Exam</p></a></div></div></td>
<td align="center"><div class="polaroid" style="width: 60%;"><a href="adminLibrary.jsp"><img src="libimg.jpg" alt="Library.jpg" style="width:100%"></a><div class="container"><a href="adminLibrary.jsp"><p>Manage Library</p></a></div></div></td>
</tr>
</table>
<br>
<br>

</body>
</html>
