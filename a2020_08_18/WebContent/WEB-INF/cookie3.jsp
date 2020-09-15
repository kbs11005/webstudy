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
Cookie cookies[] = request.getCookies();
if(cookies != null){
	for(int i = 0; i<cookies.length;i++){
		if(cookies[i].getName().equals("Name")){
			Cookie cookie = new Cookie("Name","");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	}
}
out.println("쿠키를 삭제하였습니다.");
%>
</body>
</html>