<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Library</title>
<header><table align="center"><tr><td><%@include file="logo.html" %></td><td style="padding-left: 10px; padding-right: 10px;"></td>
<td><p style="padding-left:20px ; font-family:serif; font-size: 60px;">AGO COLLEGE</p></td></tr></table>
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
footer{
background-color:rgb(150,150,150);
}
label{
text-shadow: 1px 1px gray;
}
</style>
</head>
<body>
<center><img width="1000" height="200" alt="College.jpeg" src="collegeimg.jpg" border=1px title="College.jpeg" style="border-radius: 20px;padding-left:1px;padding-right:1px;padding-top:1px;padding-bottom:1px;"></center>
<br><br>
<button onclick="goBack()" style="font-family:serif; align-self:center; margin-left:200px; font-size: 15px; font-weight:bold; color:black; border-color:black; border-radius: 5px; background: !important; padding-bottom:1px " type="submit">Go Back to Courseware</button>
<h1 style="font-family:serif; font-size: 40px; font-weight: bold; margin-left: 460px;">Delete the Book from Library</h1>
<form action=AdminDeleteLibraryServlet method=post>
<label>
<span style="margin-left: 350px;">Book ID : </span><br>
<input style="margin-left: 350px;" required type="text" name="bookid">
<br><br></label>
<button style="margin-left:550px ;font-family:serif; padding:14px 40px; font-size: 20px; border-color:black; " type="submit">Delete Book</button>
</form>
<br>
<br>

</body>
</html>