<%@page import="glory.loginbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="log" class="glory.loginbean" scope="page"/>
<jsp:setProperty property="*" name="log"/>
<%
if(!log.checkuser()) out.println("로그인 실패!");
else out.println("로그인 성공!");
%>
<jsp:getProperty property="name" name="log"/>
<jsp:getProperty property="id" name="log"/>
<jsp:getProperty property="pwd" name="log"/>
</body>
</html>