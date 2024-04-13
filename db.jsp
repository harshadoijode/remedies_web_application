<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""  %>

<%
Connection con=null;
ResultSet rst=null;
Statement stmt=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gfgc_tax","root","root");
stmt=con.createStatement();
//out.print("sucessful connection");
}catch(Exception e){
out.print("error is:"+e);
}
%>