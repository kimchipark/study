<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸���</title>
	</head>
	<body>
		<form name="write" method="post" action="writeok.jsp">
			<table border="1" align="center" style="width:600px">
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><input type="text" name="title" value="" required style="width:96%"></td>
				</tr>
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><textarea name="note" rows="5" required style="width:96%"></textarea></tr>			
				<tr>
					<td colspan="2" style="text-align:center">
					<input type="submit" value="�����ϱ�">
					&nbsp; | &nbsp; 
					<a href="index.jsp">���</a>		
					</td>
				</tr>			
			</table>
		</form>
	</body>
</html>