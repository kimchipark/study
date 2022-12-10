<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//session.invalidate();  한번에 없애는건 별로 좋지 않은 방법

session.removeAttribute("no");
session.removeAttribute("id");
session.removeAttribute("name");

response.sendRedirect("index.jsp");
%>