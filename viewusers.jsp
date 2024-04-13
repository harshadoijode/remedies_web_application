<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Home Remedies</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style></head>

<body>
<%@ include file="admintabs.html" %>
<br />
<br />
<br />
<br />
<br />
<br />

  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select * from customer ");

  
						
  %>
  Registered Customers</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
  
    <td><div align="center" class="style1"> Name </div></td>
    <td><div align="center" class="style1">Address </div></td>
    <td><div align="center" class="style1">Phone</div></td>
	 <td><div align="center" class="style1">email</div></td>
	<td><div align="center" class="style1">ID</div></td>
	

  </tr>
  <% 
  while(rst.next()){
  
   %>
   <form action="" method="post">
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><%= rst.getString(1) %></div></td>
  
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
	 <td><div align="center"><%= rst.getString(5) %></div></td>
	  <td><div align="center"><%= rst.getString(6) %></div></td>
  
	
   
   
	
  </tr>
  </form>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
 
 
 
</body>
</html>
