<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>��������</title>
	</head>
	<body>
	<%
	//������ �������� IP�� ��´�.
	String ip = request.getRemoteAddr();
	out.print(ip);
	
	out.print("<br>");
	
	String browser = request.getHeader("User-Agent");
	out.print(browser);
	%>
	</body>
</html>