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
String adult=request.getParameter("radult");
String child=request.getParameter("rchild");
String roomtype=request.getParameter("rroom");


Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into room values(?,?,?,?)");
ps.setString(1, aadharid);
ps.setString(2, adult);
ps.setString(3, child);
ps.setString(4, roomtype);

int i=ps.executeUpdate();
if(i>0){
	out.println("room details fetched");
}
}catch(Exception e){
out.println(e);
}
%>
