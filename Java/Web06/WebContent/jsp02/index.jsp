<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">	
		<title>���� ����</title>
	</head>
	<body>
	<%
	session.setAttribute("name","ȫ�浿");
	session.setAttribute("age",30);
	%>
	������ �����Ǿ����ϴ�.
	<br>
	<a href="view.jsp">���Ǻ���</a>
	</body>
</html>
