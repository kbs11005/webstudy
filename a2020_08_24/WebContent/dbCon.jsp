<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn=null;
	PreparedStatement pstmt= null;
	DataSource ds= null;

	Context ctx = new InitialContext();
	ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");
	ds.getConnection();
	out.print("OK");
	
%>
</body>
</html>