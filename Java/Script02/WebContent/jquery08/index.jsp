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
		function DoSubmit()
		{
			if( $("#id").val() == "")
			{
				alert("���̵� �Է��ϼ���");
				$("#id").focus();
				return;
			}
			if( $("#pw").val() == "")
			{
				alert("��й�ȣ�� �Է��ϼ���");
				$("#pw").focus();
				return;
			}
			if(confirm("�α��� �Ͻðڽ��ϱ�?") != 1)
			{
				return;
			}
			//document.login.submit();
			$("#login").submit();
		}
		</script>
		<form id="login" name="login" method="get" action="loginok.jsp">
		���̵� : <input type="text" id="id" name="id">
		<br>
		��й�ȣ : <input type="text" id="pw" name="pw">
		<br>
		<a href="javascript:DoSubmit();">����</a>
		</form>
	</body>
</html>