<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���ε� �׽�Ʈ</title>
	</head>
<body>
	<form name="uploadfrm" method="post" action="uploadok.jsp" enctype="multipart/form-data">
	���� : <input type="text" name="title">
	<br>
	<br>
	<input type="file" name="attach">
	<input type="submit" value="����">
	</form>
</body>
</html>