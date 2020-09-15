<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="getparm.jsp" method="get">
이름 :&nbsp;&nbsp;&nbsp;
<input type="text"name="irum"/><br/>
주소 :&nbsp;&nbsp;&nbsp;
<input type="text"name="juso"/><br/>
성별 :&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" value="남자" checked="checked">남자
<input type="radio" name="gender" value="여자">여자<br/>
좋아하는 동물 :&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="pet" value="p1"/>강아지
<input type="checkbox" name="pet" value="p2"/>고양이
<input type="checkbox" name="pet" value="p3"/>돼지<br/>
<input type="submit" value="전송">
</form>
</body>
</html>