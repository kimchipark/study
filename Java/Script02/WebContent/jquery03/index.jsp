<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
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
				$("#msg").html("아이디를 입력하세요");
				$("#msg").css("display", "");
				$("#msg").css("color", "red");
				$("#id").focus();
				return false;
			}
			if($("#pw").val() == "")
			{
				$("#msg").html("비밀번호를 입력하세요");
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
		아이디  : <input type="text" id="id" name="id" onkeypress="MsgClear();">
		<br>
		비밀번호 : <input type="password" id="pw" name="pw" onkeypress="MsgClear();">
		<br>
		<span id="msg" style="display:none;">이곳에 메시지가 표시됩니다.</span>
		<br>
		<input type="submit" value="로그인">
	</form>
	</body>
</html>