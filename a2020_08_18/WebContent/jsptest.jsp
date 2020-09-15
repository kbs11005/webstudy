<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String title="JSP";
	String author="홍길동";
	Date xx = new Date();
	/*out.write(title+"<br/>");*/
%>
<%=title %><br/>
<%=author %><br/>
<%=xx %>

</body>
</html>