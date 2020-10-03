<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.DriverManager" %>

<%

try
{
int k=(int)(Math.random() * 1000); 
int m=0;
String cust_id=request.getParameter("rid");
String room=request.getParameter("rroom");
String matress=request.getParameter("rmat");
String privatepool=request.getParameter("rpool");
String breakfast=request.getParameter("rbreak");

Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into facility values(?,?,?,?,?)");
ps.setString(1, cust_id);
ps.setString(2, room);
ps.setString(3, matress);
ps.setString(4, privatepool);
ps.setString(5, breakfast);
int i=ps.executeUpdate();
if(i>0){
	out.println("room facilities fetched");
}
}catch(Exception e){
out.println(e);
}
%>
