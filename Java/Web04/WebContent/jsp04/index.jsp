<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제 페이지</title>
	</head>
	<body>    
		<style>
			span
			{
				color: red;
			}					
		</style>
		<%
		for(int i=1; i <=10; i++)
		{
			//String bgcolor = "#ffffff";
			//if( i % 2 == 1) bgcolor = "#cccccc";
			//String bgcolor = (i % 2 == 1) ? "#ffffff" : "#cccccc";
			%>
			<span style="background-color:<%= (i % 2 == 1) ? "#ffffff" : "#cccccc" %>"><%= i %>번째입니다.</span>
			<br>
			<%
		}
		%>
	</body>
</html>
	
	