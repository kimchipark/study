<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제연습</title>
	</head>
	<body>
		<%
		String name = "전우치";
		%>
		include 연습니다.
		<br>
		<%@ include file="sub.jsp" %>		
	</body>
</html>


