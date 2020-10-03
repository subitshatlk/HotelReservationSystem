<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.DriverManager" %>

<%

try
{
int k=(int)(Math.random() * 1000); 
int m=0;
String person=request.getParameter("rname");
String mobile=request.getParameter("rnumber");
String pgender=request.getParameter("gender");
String email=request.getParameter("eid");
String emergency=request.getParameter("enumber");
String pass_one=request.getParameter("password");
String pass_two=request.getParameter("confirm_password");
String address=request.getParameter("address");
String city_type=request.getParameter("city");
String state_type=request.getParameter("state");



Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Sneha123");
PreparedStatement ps=conn.prepareStatement("insert into appoinment values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, person);
ps.setString(2, mobile);
ps.setString(3, pgender);
ps.setString(4, email);
ps.setString(5, emergency);
ps.setString(6, pass_one);
ps.setString(7, pass_two);
ps.setString(8, address);
ps.setString(9, city_type);
ps.setString(10, state_type);




int i=ps.executeUpdate();
if(i>0){
	out.println("inserted");
}
}catch(Exception e){
out.println(e);
}
%>