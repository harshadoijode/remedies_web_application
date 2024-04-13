<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:20%;
  margin-right:20%;
}
.style3 {color: #FFFFFF; font-weight: bold; font-size:18px; }
body {
	background-image: url(img/slider/slider5.jpeg);
}
.mySlides {display:none;}
</style>
<body>
<div   >
<br />
<br />
<br />
<br />


</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from customer where email='"+s1+"' and password='"+s2+"'");
if(rst.next()){
%>
<script>

alert("login Successfull");
window.open("customertabs.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}





}


%>
<table   width="1185" height="426" border="0" align="center">
  <tr>
   
    <td width="524"><div align="justify">
     <h3 align="right" style="color:#0000CC">Customer Login Page</h3>
  <form action="" method="post">
  
  
    <table style=" border-radius:25px" width="621" border="0" align="right">
      <tr>
        <td><span class="style3">
          <label for="fname">
          </span>
          <div align="right" class="style3">
            </label>
          </div></td>
        <td><input type="text"  name="username" placeholder="Username" /></td>
      </tr>
      <tr>
        <td><span class="style3">
          <label for="lname">
          </span>
          <div align="right" class="style3">
            </label>
          </div></td>
        <td><input type="password"  name="password" placeholder="Your Password." /></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td><input type="submit" name="Submit" value="Submit" />
		<a href="customerReg.jsp" target="_self"><input type="button" name="Submit" value="Registration" /></a>
		</td>
      </tr>
    </table>
    <div align="center"></div>
    <div align="center"></div>
    <div align="center"></div>
    <p>&nbsp;      </p>
  </form>
    </div></td>
   
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

</body>

</html>
