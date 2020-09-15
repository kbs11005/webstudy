<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="form1" action="/a2020_08_13/calcservlet" method="get">
<input type="text" name="num1">
<select name="operator">
<option selected>+</option>
<option>-</option>
<option>*</option>
<option>/</option>
</select>
<input type="text" name="num2">
<input type="submit" name="b1" value="계산">
<input type="submit" name="b2" value="다시입력">
</form>
</body>
</html>