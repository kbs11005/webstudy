<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

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
		String sql = "insert into member values(?,?,?,?)";
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
	%>
	<%
		String memberid = request.getParameter("memberid");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
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