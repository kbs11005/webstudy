
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<%
	boolean sw=false;
	String message= "설정된 쿠키 정보";
	Cookie date = null;
	Cookie cnt = null;
	
	Cookie cook[]=request.getCookies();
	if(cook!=null){
		for(int i=0;i<cook.length;i++){
			message+="이름"+cook[i].getName()+"/ 값="+
		cook[i].getValue()+"<br/>";
		System.out.println("aa="+cook[i].getName());
		if(cook[i].getName().equals("dateCookie")){
			date=cook[i];
			sw=true;
		}else if(cook[i].getName().equals("cntCookie")){
			cnt=cook[i];
		}
		}
		
	}else{
		message+="사이트 첫 방문을 환영합니다.<br/>";
	}
	String datevalue=String.valueOf(System.currentTimeMillis());
	
	
	if(!sw){
		date = new Cookie("dateCookie",datevalue);
		date.setMaxAge(365*24*60*60);
		date.setPath("/");
		response.addCookie(date);
		
		cnt= new Cookie("cntCookie", String.valueOf(1));
		cnt.setMaxAge(365*24*60*60);
		cnt.setPath("/");
		response.addCookie(cnt);
	}else{
		long conv = Long.parseLong(date.getValue());
		int count = Integer.parseInt(cnt.getValue())+1;
		message += "마지막 방문 : "+ new Date(conv)+"방문횟수 : "+count;
		
		date.setValue(datevalue);
		date.setMaxAge(365*24*60*60);
		date.setPath("/");
		response.addCookie(date);
		
		cnt.setValue(String.valueOf(count));
		cnt.setMaxAge(365*24*60*60);
		cnt.setPath("/");
		response.addCookie(cnt);	
	}
	System.out.println("msg = "+message);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=message %>
</body>
</html>