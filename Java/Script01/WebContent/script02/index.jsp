<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�ڹٽ�ũ��Ʈ ����</title>
	</head>
	<body>
		<script>
			function OpenNaver()
			{
				//alert("���̹��� �̵�!");
				//document.location = "http://www.naver.com"; //�������� �ٷ� �̵������ִ� ��
				window.open("https://www.naver.com","_naver", "width=500, height = 300")
			}
			function DoCal(x, y)
			{
				sum = x + y;
				//alert(sum);
				obj = document.getElementById("sum");
				obj.innerHTML = sum
			}
		</script>			
		<a href="http://www.naver.com">���̹��� �̵�</a>
		<br>
		<a href="javascript:OpenNaver();">���̹��� �̵�</a>
		<br>
		<span id="sum" onclick="javascript:DoCal(10,20);">����ϱ�</span>
	</body>
</html>