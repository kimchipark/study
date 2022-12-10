<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//session.invalidate();

session.removeAttribute("login");

response.sendRedirect("index.jsp");
%>
