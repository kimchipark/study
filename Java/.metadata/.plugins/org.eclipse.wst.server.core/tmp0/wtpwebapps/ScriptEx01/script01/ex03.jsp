<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�������� 3</title>
	</head>
	<body>
	<h3>�����ð��̸� �Ķ��� ���Ľð��̸� ������ ���</h3>
	<hr>
	<script type="text/javascript">
	let current = new Date();
	if( current.getHours() < 12)
	{
		document.body.style.backgroundColor = "lightskyblue";
	}
	else
	{
		document.body.style.backgroundColor = "orange";
	}
	document.write("����ð� : ");
	document.write(current.getHours() +"�� ");
	document.write(current.getMinutes() +"�� ");
	document.write(current.getSeconds() +"��");
	</script>
	</body>
</html>