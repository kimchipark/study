<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String won = request.getParameter("won");
if( won == null) won = "";
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ������</title>
	</head>
	<body>
		<form method="get" action="index.jsp">
			<input type="text" name="won" value="<%= won %>">
			<input type="submit">
		</form>
		<a href="index.jsp?won=999">������</a>
	</body>
</html>



