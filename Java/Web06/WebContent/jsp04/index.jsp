<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>       
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
					loginVO login = 
						(loginVO)session.getAttribute("login");
					if( login == null)
					{
						%>
						<a href="login.jsp">�α����ϱ�</a>
						<%
					}else
					{
						%>
						<%= login.getUserName() %>�� �ݰ����ϴ�.
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

