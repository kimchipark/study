<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ������</title>
	</head>
	<body>
	<%
	for(int i=1; i <= 10; i++)
	{
		//out.print("i=" + i + "<br>");
		%>i=<%= i %><br><%
	}
	%>
	</body>
</html>

