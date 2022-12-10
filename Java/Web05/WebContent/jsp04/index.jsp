<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>예제 연습</title>
	</head>
	<body>
		<form method="get" action="data.jsp">
			<input type="text" size="3" name="x"
			value="11">
			<select name="op">
				<option value="+">더하기</option>
				<option value="-">빼기</option>
				<option value="*">곱하기</option>
				<option value="/">나누기</option>
			</select>			
			<input type="text" size="3" name="y"
			value="22">
			<input type="submit" value="계산">
		</form>		
	</body>
</html>