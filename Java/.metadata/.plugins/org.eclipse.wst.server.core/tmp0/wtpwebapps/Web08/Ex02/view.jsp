<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>������ȸ</title>
	</head>
	<body>
		no = <%= no %>
		<form name="write" method="post" action="writeok.jsp">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">������</td>
					<td>�װ��� �ڹٴ�.</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">���ǻ�</td>
					<td>�������ǻ�</td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td>ȫ�浿</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td>10,000��</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">�����</td>
					<td>2022.01.01</td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td>�� ���ƿ�<br>�� ���ƿ�<br>�� ���ƿ�<br>�� ���ƿ�<br>�� ���ƿ�<br></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<a href="index.jsp">���</a>
						&nbsp; | &nbsp; 
						<a href="modify.jsp?no=<%= no %>">�����ϱ�</a>
						&nbsp; | &nbsp;
						<a href="delete.jsp?no=<%= no %>">�����ϱ�</a>						
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>