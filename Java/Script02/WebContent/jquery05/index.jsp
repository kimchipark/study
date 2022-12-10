<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<body>
		<script >
			window.onload = function()
			{
				//$("tr:even()").css("background-color","yellow");
				//$("tr:odd()").css("background-color","green");
				//$("tr:eq(0)").css("background-color","green");
				//$("td:first-child").css("background-color","green");
				//$("td:last-child").css("background-color","green");
			}
		</script>
		<table border="1">
		<tr>
			<th style="width:100px">번호</th>
			<th style="width:300px">제목</th>
		</tr>
		<%
		for( int i = 1; i <= 20; i++)
		{
			%>
			<tr>
				<td align="center"><%= i %></td>
				<td>제목입니다.</td>
			</tr>
			<%
		}
		%>
		</table>
	</body>
</html>