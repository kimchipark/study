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
		<script type="text/javascript">
		function DoSubmit()
		{
			if( $("#id").val() == "")
			{
				alert("아이디를 입력하세요");
				$("#id").focus();
				return;
			}
			if( $("#pw").val() == "")
			{
				alert("비밀번호를 입력하세요");
				$("#pw").focus();
				return;
			}
			if(confirm("로그인 하시겠습니까?") != 1)
			{
				return;
			}
			//document.login.submit();
			$("#login").submit();
		}
		</script>
		<form id="login" name="login" method="get" action="loginok.jsp">
		아이디 : <input type="text" id="id" name="id">
		<br>
		비밀번호 : <input type="text" id="pw" name="pw">
		<br>
		<a href="javascript:DoSubmit();">전송</a>
		</form>
	</body>
</html>