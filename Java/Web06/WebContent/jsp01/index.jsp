<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
Cookie cookie1 = new Cookie("name","Park-gil-dong");
cookie1.setMaxAge(2 * 365 * 24 * 60 * 60);
response.addCookie(cookie1);

Cookie cookie2 = new Cookie("age","20");
response.addCookie(cookie2);
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">	
		<title>쿠키 연습</title>
	</head>
	<body>
	쿠키를 전송했습니다.
	<br>
	<a href="view.jsp">쿠키 보기</a>
	</body>
</html>
