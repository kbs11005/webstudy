<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="glory.user" scope="page">
		<jsp:setProperty name="user" property="firstname" value="Hong" />
		<jsp:setProperty name="user" property="lastname" value="Gildong" />

		당신의 이름은 = <jsp:getProperty name="user" property="firstname" />
		<jsp:getProperty name="user" property="lastname" />

	</jsp:useBean>
</body>
</html>