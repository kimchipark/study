<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>12���� Ȩ����</title>
	</head>
	<body>	
		<table border="1" width="700px" align="center">
			<tr>
				<td align="left">
					12���� Ȩ����
				</td>
				<td align="right">
					<%
					String userid = (String)session.getAttribute("userid");
					String username = (String)session.getAttribute("username");
					if( userid == null)
					{
						%>
						<a href="login.jsp">�α����ϱ�</a>
						<%
					}else
					{
						%>
						<%= username %>�� �ݰ����ϴ�.
						<a href="logout.jsp">�α׾ƿ�</a>
						<%
					}
					%>
				</td>				
			</tr>
			<tr>
				<td colspan="2">
				12���� Ư�� ��ǰ ���..
				<br>
				12���� Ư�� ��ǰ ���..				
				<br>
				</td>												
			</tr>
		</table>
	</body>
</html>

