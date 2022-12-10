<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
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
			
			function SetClass() //Ŭ���Ҷ����� Ŭ���� �Ӽ��� �߰�, �����Ǵ� �Լ�.
			{
				if($("#mySpan").hasClass("mycss")) //mycss Ŭ������ ������ ������
				{
					$("#mySpan").removeClass("mycss"); // mycss Ŭ���� �Ӽ��� �����
				}
				else
				{
					$("#mySpan").addClass("mycss"); // mycss Ŭ���� �Ӽ��� �߰��Ѵ�.
				}
			}
		</script>
		<div onmouseover="SetDiv(this, 'red');" onmouseout="SetDiv(this, 'blue');">�׽�Ʈ 1</div>
		<div>�׽�Ʈ 2</div>
		<span id="mySpan" onclick="SetClass();">�׽�Ʈ 3</span>
	</body>
</html>