<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제 페이지</title>
	</head>
	<body>
		<a href="data.jsp?won=123">연결하기</a>
		<br>
		<form method="get" action="data.jsp">
			<input type="hidden" name="won" value="123">
			<input type="submit" value="전송">
		</form>
	</body>
</html>



