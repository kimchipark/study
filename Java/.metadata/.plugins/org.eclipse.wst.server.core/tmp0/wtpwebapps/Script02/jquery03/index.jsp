<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#id").focus();
			//$("#id").val("ezen");
		}
		function DoLogin()
		{
			if($("#id").val() == "")
			{
				$("#msg").html("���̵� �Է��ϼ���");
				$("#msg").css("display", "");
				$("#msg").css("color", "red");
				$("#id").focus();
				return false;
			}
			if($("#pw").val() == "")
			{
				$("#msg").html("��й�ȣ�� �Է��ϼ���");
				$("#msg").css("display", "");
				$("#msg").css("color", "red");
				
				$("#pw").focus();
				return false;
			}
			
			return true;
		}
		function MsgClear()
		{
			$("#msg").html("");
		}
	</script>
	<form id="login" name="login" method="post" onsubmit="return DoLogin();" action="loginok.jsp">
		���̵�  : <input type="text" id="id" name="id" onkeypress="MsgClear();">
		<br>
		��й�ȣ : <input type="password" id="pw" name="pw" onkeypress="MsgClear();">
		<br>
		<span id="msg" style="display:none;">�̰��� �޽����� ǥ�õ˴ϴ�.</span>
		<br>
		<input type="submit" value="�α���">
	</form>
	</body>
</html>