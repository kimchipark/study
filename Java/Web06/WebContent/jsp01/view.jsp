<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>쿠기 보기</title>
	</head>
	<body>
		<%
		Cookie[] cookie = request.getCookies();
		if( cookie != null)
		{
			for(int i=0; i < cookie.length; i++)
			{
				String name  = cookie[i].getName();
				String value = cookie[i].getValue();
				out.print("[" + name + "]");
				out.print("=");
				out.print("[" + value + "]");
				out.print("<br>");
			}
		}
		%>
	</body>
</html>