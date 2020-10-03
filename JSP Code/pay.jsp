<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.DriverManager" %>

<%

try
{
int k=(int)(Math.random() * 1000); 
int m=0;
String refid=request.getParameter("rid");
String amount=request.getParameter("ramt");
String payment=request.getParameter("rpay");


Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into payment values(?,?,?)");
ps.setString(1, refid);
ps.setString(2, amount);
ps.setString(3, payment);




int i=ps.executeUpdate();
if(i>0){
	out.println("inserted");
}
}catch(Exception e){
out.println(e);
}
%>
