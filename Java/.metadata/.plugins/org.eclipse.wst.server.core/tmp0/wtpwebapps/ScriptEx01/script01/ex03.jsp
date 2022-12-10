<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>연습문제 3</title>
	</head>
	<body>
	<h3>오전시간이면 파란색 오후시간이면 오렌지 배경</h3>
	<hr>
	<script type="text/javascript">
	let current = new Date();
	if( current.getHours() < 12)
	{
		document.body.style.backgroundColor = "lightskyblue";
	}
	else
	{
		document.body.style.backgroundColor = "orange";
	}
	document.write("현재시간 : ");
	document.write(current.getHours() +"시 ");
	document.write(current.getMinutes() +"분 ");
	document.write(current.getSeconds() +"초");
	</script>
	</body>
</html>