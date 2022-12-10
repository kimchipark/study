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
	try
	{
		String name = (String)session.getAttribute("name");
		int age = (int)session.getAttribute("age");
		out.print("name:" + name + "<br>");
		out.print("age:" + age + "<br>");
		
		session.invalidate();
	}catch(Exception e)
	{
		out.print("세션 데이터 오류입니다.");
	}
	%>	
	</body>
</html>
