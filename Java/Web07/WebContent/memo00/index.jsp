<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸���</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:700px">
			<tr>
				<td colspan="3" style="text-align:right">
				<a href="write.jsp">�۾���</a>
				</td>
			</tr>
			<tr>
				<td style="width:100px;">��ȣ</td>
				<td>����</td>
				<td style="width:120px;">��¥</td>
			</tr>
			<% 
			for(int i=1; i <= 10; i++)
			{
				%>
				<tr>
					<td><%= i %></td>
					<td style="text-align:left">
						<a href="view.jsp">�����Դϴ�.</a>
					</td>
					<td>2022.08.22</td>
				</tr>
				<%
			}
			%>
		</table>		
		<table border="1" align="center" style="width:700px">
			<tr>
				<td>��ü�Խù� :  10</td>
			</tr>
			<tr>
				<td>
				���������� | 1 | 2 | 3 | 4 | 5 | ����������
				</td>
			</tr>
		</table>
	</body>
</html>
