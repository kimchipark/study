<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>ä�ù� ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<body>
		<script>
			window.onload = function()
			{
				$("#nick").focus();
			}
			
			function  DoJoin()
			{
				if($("#nick").val() == "")
				{
					alert("�г����� �Է��ϼ���!!");
					$("#nick").focus();
					return false;
				}
				return true;
			}
		</script>
		<form id="join" name="join" method="post" action="chat.jsp"
		onsubmit="return DoJoin();">
			�г��� : <input type="text" size="10" id="nick" name="nick">
			<input type="submit" value="�����ϱ�">
		</form>
	</body>
</html>