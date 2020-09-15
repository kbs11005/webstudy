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
	String memberid = request.getParameter("memberid");
	
%>
<form action="delete.jsp" method="get">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="memberid" size="10" value="<%=memberid %>"/></td>
	<td>암호</td>
	<td><input type="text" name="password" size="10"/></td>
</tr>
	<td colspan="4"><input type="submit" value="삭제"/></td>
<tr>
</tr>
</table>
</form>
</body>
</html>