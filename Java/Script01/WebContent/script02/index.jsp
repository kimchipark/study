<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>자바스크립트 연습</title>
	</head>
	<body>
		<script>
			function OpenNaver()
			{
				//alert("네이버로 이동!");
				//document.location = "http://www.naver.com"; //브라우저를 바로 이동시켜주는 것
				window.open("https://www.naver.com","_naver", "width=500, height = 300")
			}
			function DoCal(x, y)
			{
				sum = x + y;
				//alert(sum);
				obj = document.getElementById("sum");
				obj.innerHTML = sum
			}
		</script>			
		<a href="http://www.naver.com">네이버로 이동</a>
		<br>
		<a href="javascript:OpenNaver();">네이버로 이동</a>
		<br>
		<span id="sum" onclick="javascript:DoCal(10,20);">계산하기</span>
	</body>
</html>