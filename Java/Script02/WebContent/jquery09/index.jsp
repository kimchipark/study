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
		<script type="text/javascript">
			window.onload = function()
			{
				//�̺�Ʈ ������
				$("#mydiv").click(
					function() 
					{
						alert("click me!!");
					}		
				);
			}
		</script>
		<div>Click me</div>
		<div>Click me</div>
		<div id="mydiv">Click me</div>
	</body>
</html>