<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<body>
		<style>
			.mycss
			{
				color:blue;
				background-color:red;
			}
		</style>
		<script type="text/javascript">
			window.onload = function()
			{
				$("div").css("border", "1px solid #AAA");
				$("div").css("width", "200px");
				$("div").css("height", "100px");
			}
			function SetDiv(obj, color)
			{
				$(obj).css("color",color);
			}
			
			function SetClass() //클릭할때마다 클래스 속성이 추가, 삭제되는 함수.
			{
				if($("#mySpan").hasClass("mycss")) //mycss 클래스를 가지고 있으면
				{
					$("#mySpan").removeClass("mycss"); // mycss 클래스 속성을 지운다
				}
				else
				{
					$("#mySpan").addClass("mycss"); // mycss 클래스 속성을 추가한다.
				}
			}
		</script>
		<div onmouseover="SetDiv(this, 'red');" onmouseout="SetDiv(this, 'blue');">테스트 1</div>
		<div>테스트 2</div>
		<span id="mySpan" onclick="SetClass();">테스트 3</span>
	</body>
</html>