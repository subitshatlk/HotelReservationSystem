<html>
<body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String address=request.getParameter("radd");
String id=request.getParameter("rid");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Sneha123");

PreparedStatement st1=conn.prepareStatement("update customer set address=? where id=?");
st1.setString(1,address);
st1.setString(2,id);
ResultSet rs1=st1.executeQuery();
%>
<center><h2>Account Updated SuuccessFully!</h2></center>

<%
%>




</body>
</html>