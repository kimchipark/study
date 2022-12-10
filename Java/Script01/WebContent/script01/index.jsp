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
			window.onload = function()
			{
				divX.innerHTML = "<strong><i>Hello?</i></strong>";
				
				obj = document.getElementById("divY");
				obj.innerHTML = "<strong><i>Hi?</i></strong>";
				
				obj.style.color = "red";
				obj.style.backgroundColor = "#f4f4f4";
				
				newDiv = document.createElement("div");
				newDiv.innerHTML = "test div";
				obj.appendChild(newDiv);
			}
		</script>
		<div id="divX"></div>
		<div id="divY"></div>
	</body>
</html>