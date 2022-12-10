<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String hello = "Hello, ezen!!!";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제 페이지</title>
	</head>
	<body>
	<%
	out.print(hello);
	%>
	<br>
	<%= hello %>
	</body>
</html>


