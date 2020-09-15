<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>
<table border="1">
	<tr>
		<th>아이디</th>
		<td><%=id %></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><%=pw %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><%=email %></td>
	</tr>
</table>
</body>
</html>