<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>���� ����</title>
	</head>
	<body>
		<form method="get" action="data.jsp">
			<input type="text" size="3" name="x"
			value="11">
			<select name="op">
				<option value="+">���ϱ�</option>
				<option value="-">����</option>
				<option value="*">���ϱ�</option>
				<option value="/">������</option>
			</select>			
			<input type="text" size="3" name="y"
			value="22">
			<input type="submit" value="���">
		</form>		
	</body>
</html>