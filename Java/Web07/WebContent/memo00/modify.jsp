<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸𺯰�</title>
	</head>
	<body>
		<form name="write" method="post" action="modifyok.jsp">
			<table border="1" align="center" style="width:600px">
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><input type="text" name="title" value="�����Դϴ�." required style="width:96%"></td>
				</tr>
				<tr>
					<td style="width:100px;">��¥</td>
					<td style="text-align:left">2022.08.22</td>
				</tr>
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><textarea name="note" rows="5" required style="width:96%">�����Դϴ�1.
�����Դϴ�2.
�����Դϴ�3.
�����Դϴ�4.
�����Դϴ�5.</textarea>
				</tr>			
				<tr>
					<td colspan="2" style="text-align:center">
					<input type="submit" value="�����ϱ�">
					&nbsp; | &nbsp; 
					<a href="view.jsp">���</a>		
					</td>
				</tr>			
			</table>
		</form>
	</body>
</html>
