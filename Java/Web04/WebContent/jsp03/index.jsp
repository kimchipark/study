<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제 페이지</title>
	</head>
	<body>
		<table border="1" style="width:100%">
			<tr>
				<th style="width:70px;">번호</th>
				<th>제목</th>
			</tr>
			<%
			for(int i=0; i <= 30; i++)
			{
				%>
				<tr>
					<td><%= i+1 %></td>
					<td><%= i+1 %>번째 제목입니다.</td>
				</tr>
				<%
			}
			%>									
		</table>
	</body>
</html>


