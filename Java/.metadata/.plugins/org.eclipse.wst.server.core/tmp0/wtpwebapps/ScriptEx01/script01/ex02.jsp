<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��������2</title>
	</head>
	<body>
		<script> 
			let arr = new Array(5);
			for(let i = 0; i < arr.length ; i++)
			{
				let result = prompt("�����Է�");
				arr[i] = result;
			}
			document.write("���� �� �迭: ");
			
			for(let i = 0 ; i < arr.length ; i++)
			{
				document.write(arr[i] + " ");
			}
			
			let reverseArr = arr.reverse();
			
			document.write("<br>���� ����: " + reverseArr);
		</script>
	</body>
</html>