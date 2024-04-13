<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Art Gallery</title>
<style type="text/css">
<!--

td,th {
	color: black;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
	
}
.style1 {
	color: #000033;
	font-weight: bold;
}
.style2 {font-size: 18px}
.style3 {font-size: 18; }

-->
</style>
</head>

<body>
<%@  include file="hometabs.html" %>
<%@ include file="db.jsp" %><br />
<br />
<br />
<br />

<div align="center" class="style1">New Registration  </div>

<form id="form1" name="form1" method="post" action="">
  <table style="background:#EAEAEA; color:white; border-radius:20px;" width="auto" border="0" align="center">
    <tr >
      <td width="285"><div align="right" class="style3">Name </div></td>
      <td width="212"><input name="s1" type="text"  /></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Address</div></td>
      <td><textarea name="s2" cols="auto" rows="5"></textarea></td>
    </tr>
    <tr>
      <td> <div align="right" class="style3">mobile no. </div></td>
      <td><input name="s3" type="text" pattern="[0-9]{10}" title=" phone number or number"  required /></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">password</div></td>
      <td><input name="s4" input type="password" id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
    </tr>
	<tr>
      <td><div align="right" class="style3">Email</div></td>
      <td><input name="s5" type="email"   required /></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style2"><span class="style3"></span></span></div></td>
      <td><input type="submit" name="Submit" value="Register" /></td>
    </tr>
  </table>
</form>
</div>


<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

try{
int x=stmt.executeUpdate("insert into customer(name,address,phone,password,email) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>

alert("Customer Register Successfull");
window.open("customerlogin.jsp","_self");
</script>
<%
}

}catch(Exception e){
%>
<script>

alert("This Store is already Registered by this phone number");
window.open("homeMenu.html","_self");
</script>
<%
}
}
 %>

</body>
</html>
