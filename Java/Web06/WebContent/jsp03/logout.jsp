<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.removeAttribute("userid");
session.removeAttribute("username");
//session.invalidate();

response.sendRedirect("index.jsp");
%>
�α׾ƿ��� ���������� ó�� �Ǿ����ϴ�.
<br>
<a href="index.jsp">Ȩ���� ���ư���</a>
