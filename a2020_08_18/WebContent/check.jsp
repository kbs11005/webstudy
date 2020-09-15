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
	String checkname="";
	String checkid="";
	checkname=(String) session.getAttribute("s_name");
	if(checkname==null){
		response.sendRedirect("./login.jsp");
	}
	checkid=(String)session.getAttribute("s_id");
%>
<%=checkname %>(<%=checkid %>)님 로그인 상태입니다.

<form>
<input type="button" value="로그아웃" onclick="location.href='logout1.jsp'"/>
</form>
</body>
</html>