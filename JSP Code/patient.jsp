<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.DriverManager" %>

<%

try
{
int k=(int)(Math.random() * 1000); 
int m=0;
String name=request.getParameter("name");
String mobile=request.getParameter("number");
String email=request.getParameter("eid");
String specialist=request.getParameter("spec");
String address=request.getParameter("fname");


Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into patient values(?,?,?,?,?)");
ps.setString(1, name);
ps.setString(2, mobile);
ps.setString(3, email);
ps.setString(4, specialist);
ps.setString(5, address);





int i=ps.executeUpdate();
if(i>0){
	out.println("inserted");
}
}catch(Exception e){
out.println(e);
}
%>