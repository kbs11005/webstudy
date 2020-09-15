<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insert_result.jsp" method="get">
<table border="1">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"/></td>
		<th>암호</th>
		<td><input type="text" name="pw"/></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name"/></td>
		<th>이메일</th>
		<td><input type="text" name="email"/></td>
	</tr>
	<tr>
		<td colspan="4"><input type="submit" value="삽입"></td>
		
	</tr>
</table>
</form>
</body>
</html>