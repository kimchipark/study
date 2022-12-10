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
	//접속한 브라우저의 IP를 얻는다.
	String ip = request.getRemoteAddr();
	out.print(ip);
	
	out.print("<br>");
	
	String browser = request.getHeader("User-Agent");
	out.print(browser);
	%>
	</body>
</html>