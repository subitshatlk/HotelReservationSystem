<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.DriverManager" %>

<%

try
{
int k=(int)(Math.random() * 1000); 
int m=0;
String aadharid=request.getParameter("rid");
String name=request.getParameter("rname");
String address=request.getParameter("radd");
String email=request.getParameter("rem");


Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into customer values(?,?,?,?)");
ps.setString(1, aadharid);
ps.setString(2, name);
ps.setString(3, address);
ps.setString(4, email);



int i=ps.executeUpdate();
if(i>0){
	out.println("inserted");
}
}catch(Exception e){
out.println(e);
}
%>
