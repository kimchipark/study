<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>업로드 테스트</title>
	</head>
<body>
	<form name="uploadfrm" method="post" action="uploadok.jsp" enctype="multipart/form-data">
	제목 : <input type="text" name="title">
	<br>
	<br>
	<input type="file" name="attach">
	<input type="submit" value="전송">
	</form>
</body>
</html>