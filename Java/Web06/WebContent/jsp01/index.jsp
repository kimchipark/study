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
		<title>��Ű ����</title>
	</head>
	<body>
	��Ű�� �����߽��ϴ�.
	<br>
	<a href="view.jsp">��Ű ����</a>
	</body>
</html>
