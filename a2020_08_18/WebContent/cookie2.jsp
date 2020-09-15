<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder" %>
<%@page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name, value;
	Cookie cook[] = request.getCookies();
	for(int i=0;i<cook.length;i++){
		name=cook[i].getName();
		value=cook[i].getValue();
		
		out.print(name +"="+URLDecoder.decode(value)+"<br/>");
		
	}
%>

<hr/>
<%
//String url = "cookies2.jsp";
//out.print(URLDecoder.decode(cook[0].getValue()));
%>
</body>
</html>