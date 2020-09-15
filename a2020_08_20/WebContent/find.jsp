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
		String key = request.getParameter("key");
		String word = request.getParameter("word");

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "system";
		String pwd = "123456";
		String sql = "select *from member where " + key + " like '%" + word+"%'";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
			Class.forName(driver);
			System.out.println("OK");
			conn = DriverManager.getConnection(url, user, pwd);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
	%>
	<h1>검색결과</h1>

	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비번</td>
			<td>이름</td>
			<td>이메일</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
		<%}%>
	</table>
</body>
</html>