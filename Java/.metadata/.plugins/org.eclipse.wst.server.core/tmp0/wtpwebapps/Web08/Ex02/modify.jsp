<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
out.print("no=" + no);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��������</title>
	</head>
	<body>
		<form method="post" action="modifyok.jsp">
		<input type="hidden" name="no" value="<%=no %>">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">������</td>
					<td><input type="text" style="width:95%" name="title"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">���ǻ�</td>
					<td><input type="text" style="width:95%" name="pub"></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><input type="text" style="width:95%" name="author"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><input type="text" style="width:95%" name="price"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">�����</td>
					<td>2022.01.01</td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><textarea style="height:300px;width:95%" name="note"></textarea></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<input type="submit" value="�����ϱ�">
						<a href="view.jsp?no=<%= no %>">���</a>
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>