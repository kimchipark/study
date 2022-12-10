<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">	
		<title>세션 연습</title>
	</head>
	<body>
	<%
	session.setAttribute("name","홍길동");
	session.setAttribute("age",30);
	%>
	세션이 설정되었습니다.
	<br>
	<a href="view.jsp">세션보기</a>
	</body>
</html>
