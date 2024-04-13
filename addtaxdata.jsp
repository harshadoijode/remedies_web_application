<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/texture1.jpg);
}
body,td,th {
	color: black;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
}

-->
</style>
<style>
.table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
.style1 {color: #0000FF;

font-size:14px;}
.style3 {font-size: 18px}
.style6 {font-size: 16px; font-weight: bold; }
.style7 {font-size: 16px}
</style>

</head>

<body>
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />
<br />

<div align="center" style="color:blue"><strong>Add Remedies Information </strong></div>
<form id="form1" name="form1" method="post" action="">
  <table width="514" border="1" align="center">
    <tr>
      <td width="289" ><span class="style1">Enter Disease name </span></td>
      <td width="209" ><input name="s1" type="text" id="s1" required /></td>
    </tr>
    <tr>
      <td><span class="style1">Ingredients</span></td>
      <td><textarea name="s2" id="s2" required></textarea></td>
    </tr>
    <tr>
      <td><span class="style1">Procedure </span></td>
      <td><textarea name="s3" id="s3" required></textarea></td>
    </tr>
    <tr>
      <td><span class="style1"></span></td>
      <td><input type="submit" name="Submit" value="Add Data" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");



try{
int x=stmt.executeUpdate("insert into taxinfo values('"+s1+"','"+s2+"','"+s3+"')");
if(x!=0){
%>
<script>
alert("Data added Successfully");
</script>
<%
}
}catch(Exception e){
out.print(e);
}
}
 %>
 
 <p align="center" style="color:white;">

  Remedies Information details</p>
  <div style="overflow-x: auto;">
<table width="1188" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="235"><span class="style6">Disease Name</span></td>
    <td width="254"><span class="style6">Ingredients</span></td>
    <td width="283"><span class="style6">Procedure</span></td>
    
	
	
    <td width="129">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from taxinfo");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value=""/></span></td>
    <td><span class="style3 style1">
    <textarea name="e2"><%= rst.getString(2) %></textarea>
    </span></td>
    <td><span class="style3 style1">
      <textarea name="e3"><%= rst.getString(3) %></textarea>
    </span></td>
    <td><span class="style3 style1">
    
    
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>
</div>
<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update taxinfo set taxname='"+request.getParameter("e1")+"',description='"+request.getParameter("e2")+"',applicablefor='"+request.getParameter("e3")+"',");
if(x!=0)
{

%>
<script>
alert("Date Updated");
window.open("addtaxdata.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from taxinfo where taxname='"+request.getParameter("e1")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("addtaxdata.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
