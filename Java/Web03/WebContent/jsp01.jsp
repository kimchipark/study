<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>JSP 연습</title>
	</head>
	<body>
		구구단<br>
		<table border="0">
			<%
			for(int x = 1; x <= 9; x++)
			{
				for(int y=1; y <=9; y++)
				{
					%>
					<tr>
						<td style="width:70px;text-align:center;"><%= x %></td>
						<td style="width:20px;text-align:center;">x</td>
						<td style="width:70px;text-align:center;"><%= y %></td>
						<td style="width:20px;text-align:center;">=</td>		
						<td style="width:70px;text-align:right;"><%= x * y %></td>				
					</tr>
					<%
				}
			}
			%>
		</table>
	</body>
</html>
