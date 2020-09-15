<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String pwd = "123456";
	Connection	conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs =null;
	String sql="update member set password=?, name=?, email=? where memberid=?";
	
	String memberid = request.getParameter("memberid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	System.out.println(memberid);
	try{
	Class.forName(driver);
	System.out.println("OK");
	conn=DriverManager.getConnection(url, user, pwd);
	pstmt=conn.prepareStatement(sql);

	pstmt.setString(1, password);
	pstmt.setString(2, name);
	pstmt.setString(3, email);
	pstmt.setString(4, memberid);

	pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		pstmt.close();
		conn.close();
	}
	response.sendRedirect("jdbc_select.jsp");
	
%>