<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.removeAttribute("userid");
session.removeAttribute("username");
//session.invalidate();

response.sendRedirect("index.jsp");
%>
로그아웃이 정상적으로 처리 되었습니다.
<br>
<a href="index.jsp">홈으로 돌아가기</a>
