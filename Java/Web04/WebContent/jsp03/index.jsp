<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ������</title>
	</head>
	<body>
		<table border="1" style="width:100%">
			<tr>
				<th style="width:70px;">��ȣ</th>
				<th>����</th>
			</tr>
			<%
			for(int i=0; i <= 30; i++)
			{
				%>
				<tr>
					<td><%= i+1 %></td>
					<td><%= i+1 %>��° �����Դϴ�.</td>
				</tr>
				<%
			}
			%>									
		</table>
	</body>
</html>


