<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//session.invalidate();  �ѹ��� ���ִ°� ���� ���� ���� ���

session.removeAttribute("no");
session.removeAttribute("id");
session.removeAttribute("name");

response.sendRedirect("index.jsp");
%>