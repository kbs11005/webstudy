<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<HTML>
<HEAD>
<TITLE>���� ����</TITLE>
</HEAD>
<BODY>
	<%
		Integer count = (Integer) session.getAttribute("count");
		if (count == null) {
			count = 1;
		} else {
			count = count + 1; //1������
		}
		session.setAttribute("count", count);
		out.println("�湮 Ƚ��: " + count + "<BR>");
		out.println("<P>");
		out.println("<H3>���� ���� :</H3>");
		Enumeration names = session.getAttributeNames();
		String s_name = "";
		while (names.hasMoreElements()) {
			s_name = (String) names.nextElement();
			out.println("���Ǻ����� (" + s_name + ")�� �� : " + ((Integer) session.getAttribute(s_name)).intValue()
					+ "<BR><BR>");
		}
		out.println("���� ID: " + session.getId() + "<BR>");
		out.println("���� ����: " + session.isNew() + "<BR>");
		out.println("���� �ð�: " + session.getCreationTime());
		out.println("<I>(" + new Date(session.getCreationTime()) + ")</I><BR>");
		out.println("������ ���� �ð�: " + session.getLastAccessedTime());
		out.println("<I>(" + new Date(session.getLastAccessedTime()) + ")</I><BR>");
		out.println("���� ��û ����(��Ű): " + request.isRequestedSessionIdFromCookie() + "<BR>");
		out.println("���� ��ȿ ����: " + request.isRequestedSessionIdValid() + "<BR>");
	%>
</BODY>
</HTML>