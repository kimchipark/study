<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<style>
	li
	{
		color:red;
	}
	</style>
	<body>
	<script>
		window.onload = function()
		{
			//$("*").css("color","blue");
			//$("*").css("background-color","blue");
			//$("#myLI").css("color","blue");
			//$("#myLI").css("background-color","blue");
			//$("h3").css("color","blue");
			//$("h3").css("background-color","blue");
			//$(".myClass").css("color","blue");
			$(".myClass").css("background-color","blue");
		}
	</script>
		<span>span data</span>
		<h3>h3 data</h3>
		<ul>
			<li>1��°���</li>
			<li id="myLI">2��°���</li>
			<li>3��°���</li>
			<li>4��°���</li>
		</ul>
		<ul>
			<li>5��°���</li>
			<li id="myLI">6��°���</li>
			<li class="myClass">7��°���</li>
		</ul>
	</body>
</html>