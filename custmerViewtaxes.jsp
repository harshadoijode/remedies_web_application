<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style2 {
	color: #0000FF;
	font-weight: bold;
}
.style3 {
	color: #000033;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="customertabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />
<br />
<div align="center" class="style3">
  <p>Remedies Information Details</p>
  <p>&nbsp;</p>
  <form id="form1" name="form1" method="post" action="">
    Select Disease Name
    <select name="select">
	<% rst=stmt.executeQuery("select distinct taxname from taxinfo ");
	while(rst.next()){
	 %>
	<option><%= rst.getString(1) %></option>
	<% } %>
    </select>
    <input type="submit" name="Submit" value="Submit" />
  </form>
</div>

<%
if(request.getParameter("Submit")!=null){

 rst=stmt.executeQuery("select * from taxinfo where taxname='"+request.getParameter("select")+"'");
while(rst.next()){
 %>
 
 
<table style="background-color:#E9E9E9;" width="734" height="138" border="1" align="center">
  <tr>
    <td colspan="3"><div align="center"><span class="style1">Disease Name</span>:<span class="style2"><%= rst.getString(1) %> </span></div></td>
  </tr>
  <tr>
    <td width="231" height="25"><div align="center"><span class="style1">Ingredients</span></div></td>
    <td width="260"><div align="center"><span class="style1">Procedure</span></div></td>
  </tr>
  <tr>
    <td><div align="center"><%= rst.getString(2) %> </div></td>
    <td><div align="center"><%= rst.getString(3) %> </div></td>
  </tr>
</table>
<br />
<br />

<% } 
}
%>
</body>

</html>
