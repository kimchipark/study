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
		<script>
			window.onload = function()
			{
				SetItem();
			}
			function SetItem()
			{	
				$("select option").css("color","blue");
				$(":selected").css("color","red");
			}
		</script>
		<form id="frm" name="frm">
			<select onchange="SetItem();">
				<option>�׸�1</option>
				<option>�׸�2</option>
				<option selected>�׸�3</option>
				<option>�׸�4</option>
			</select>
		</form>
	</body>
</html>