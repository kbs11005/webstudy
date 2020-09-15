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
	System.out.println(memberid);
%>

<form action="update.jsp" method="get">
<table border="1">
<tr><td>아이디</td><td><input type = "text" name = "memberid" value="<%=memberid %>"/></td></tr>
<tr><td>비번</td><td><input type = "password" name = "password"/></td></tr>
<tr><td>이름</td><td><input type = "text" name = "name"/></td></tr>
<tr><td>이메일</td><td><input type = "text" name = "email"/></td></tr>
</table>
<input type="submit" value="수정"/>
<input type="reset" value="취소"/>
<input type="button" value="삭제" onclick="location.href='deleteform.jsp?memberid=<%=memberid%>'"/>
<input type="button" value="목록보기" onclick="location.href='jdbc_select.jsp'"/>

</form>
</body>
</html>