<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�������� ���α׷�</title>
	</head>
	<body>
	<table border="0" style="width:800px;" align="center">
		<tr>
			<td style="height:40px">
				<span style="font-weight:bold; color:red;">�� �������� ���α׷�</span>
			</td>
		</tr>
		<tr>
			<td style="height:25px; text-align:right;">
				<a href="write.jsp">�������</a>
			</td>
		</tr>						
		<tr>
			<td>
				<table border="1" style="width:100%;">
					<tr>
						<td style="text-align:center; background-color:#f2f2f2; width: 60px;">��ȣ</td>
						<td style="text-align:center; background-color:#f2f2f2;">������</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">���ǻ�</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">����</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">����</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">�����</td>						
					</tr>
					<%
					for(int i=0;i<10;i++)
					{
						%>
						<tr>
							<td style="text-align:center;"><%= i + 1 %></td>
							<td><a href="view.jsp">�ڹ� ���� ������ ���� ���� �Դϴ�.</a></td>
							<td style="text-align:center;">�������ǻ�</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10,000</td>
							<td style="text-align:center;">2022.01.01</td>
						</tr>
						<%
					}
					%>
				</table>
			</td>
		</tr>
		<tr>
			<td height="40px" align="center">
			���������� | 1 | 2 | 3 | 4 | 5 | ����������
			</td>
		</tr>		
	</table>
	</body>
</html>