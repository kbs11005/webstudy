<%@page import="a2020_08_20.JDBCDB" %>
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
	<h1>회원 가입 명단</h1>
	<a href="inserform.jsp">가입 | </a>
	<a href="jdbc_select.jsp">목록보기 | </a>
	<a href="deleteall.jsp">모두삭제</a>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<%
			//String driver = "oracle.jdbc.driver.OracleDriver";
			//String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			//String user = "system";
			//String pwd = "123456";
			String sql = "select * from member";
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;

			JDBCDB db = JDBCDB.getDB();
			conn=db.conn;
			
			//Class.forName(driver);
			//conn = DriverManager.getConnection(url, user, pwd);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><a href="updateform.jsp?memberid=<%=rs.getString(1)%>"><%=rs.getString(1)%>&nbsp;&nbsp;</a></td>
			<td><%=rs.getString(2)%>&nbsp;&nbsp;</td>
			<td><%=rs.getString(3)%>&nbsp;&nbsp;</td>
			<td><%=rs.getString(4)%><br /></td>
		</tr>
		<%
			}
		%>
	</table>

	<form action="find.jsp" method="get">
		<select name="key">
			<option value="memberid">아이디</option>
			<option value="password">비번</option>
			<option value="name">이름</option>
			<option value="email">이메일</option>
		</select>
		<input type="text" name="word"/>
		<input type="submit" value="검색" />
		<input type="reset" value="취소"/>
	</form>
</body>
</html>