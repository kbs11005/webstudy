<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="info" class="glory.member"/>
<jsp:setProperty property="*" name="info"/><br>
<jsp:getProperty property="id" name="info"/><br>
<jsp:getProperty property="name" name="info"/><br>
<jsp:getProperty property="email" name="info"/><br>
<jsp:getProperty property="address" name="info"/><br>
</body>
</html>