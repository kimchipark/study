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
	try
	{
		String name = (String)session.getAttribute("name");
		int age = (int)session.getAttribute("age");
		out.print("name:" + name + "<br>");
		out.print("age:" + age + "<br>");
		
		session.invalidate();
	}catch(Exception e)
	{
		out.print("���� ������ �����Դϴ�.");
	}
	%>	
	</body>
</html>
