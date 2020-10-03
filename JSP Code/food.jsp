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
String roomtype=request.getParameter("rroom");
String cuisine=request.getParameter("rmat");
String pref=request.getParameter("rpref");


Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into food values(?,?,?,?)");
ps.setString(1, aadharid);
ps.setString(2, roomtype);
ps.setString(3, cuisine);
ps.setString(4, pref);

int i=ps.executeUpdate();
if(i>0){
	out.println("room details fetched");
}
}catch(Exception e){
out.println(e);
}
%>
