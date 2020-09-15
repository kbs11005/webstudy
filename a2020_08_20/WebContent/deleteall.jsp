<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user = "system";
String pwd = "123456";
String sql = "delete from member ";
//String sql = "delete from member where memberid=?";
Connection conn = null;
Statement stmt = null;
PreparedStatement pstmt=null;
ResultSet rs = null;
%>

<%
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.executeUpdate();
		}
		catch(Exception e){
			System.out.println(e);
		}
		finally{
			pstmt.close();
			conn.close();
		}
		response.sendRedirect("jdbc_select.jsp");
	%>
</body>
</html>