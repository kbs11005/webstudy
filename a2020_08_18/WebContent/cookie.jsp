<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.net.URLEncoder" %>
   <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie("name", URLEncoder.encode("홍길동"));
	Cookie cookie2 = new Cookie("job", URLEncoder.encode("학생"));

	cookie1.setMaxAge(365*24*60*60);
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
쿠키결과
<%=URLDecoder.decode(cookie1.getValue()) %>
<%=URLDecoder.decode(cookie2.getValue()) %>
</body>
</html>