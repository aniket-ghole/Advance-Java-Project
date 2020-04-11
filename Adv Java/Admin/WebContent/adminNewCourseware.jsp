<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Courseware</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO  COLLEGE</p></td></tr></table>
</header>
<script>
function goBack() {
    window.history.back()
}
</script>
<style>
button:hover {
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); cursor: pointer; transition-duration: 0.4s;
}
body{
background-color:rgb(300,300,300);
}
span{
font-family: serif; font-size:25px;
}
footer{
background-color:rgb(150,150,150);
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
<center><img width="1000" height="200" alt="College.jpeg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<button onclick="goBack()" style="font-family:serif; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Go Back to Courseware Page</button>
<h1 style="font-family:serif; font-size: 40px; font-weight: bold; margin-left: 400px;">Add a New Subject to Courseware</h1>
<form action=AdminNewCoursewareServlet method=post>
<label>
<span style="margin-left: 350px;">Subject Code : </span><br>
<input required style="margin-left: 350px;" type="text" name="subcode">
<br><br></label>

<label>
<span style="margin-left: 350px;">Subject Name : </span><br>
<input required style="margin-left: 350px;" type="text" name="sname">
<br><br></label>

<label>
<span style="margin-left: 350px;">Standard : </span><br>
<input required style="margin-left: 350px;" type="text" name="standard">
<br><br></label>

<button style="margin-left:500px ;font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; border-radius: 12px;" type="submit">Add New Subject to Courseware</button>
</form>
<br>
<br>

</body>
</html>