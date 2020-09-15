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
String userID="hong";
String userPWD="1234";
String userName="홍길동";

String id = request.getParameter("id");
String pw = request.getParameter("pw");
if(userID.equals(id) && userPWD.equals(pw)){
	session.setAttribute("s_name", userName);
	session.setAttribute("s_id", userID);
	response.sendRedirect("./check.jsp");
	
}else{
	response.sendRedirect("./login.jsp");
}
%>
</body>
</html>