<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>연습문제2</title>
	</head>
	<body>
		<script> 
			let arr = new Array(5);
			for(let i = 0; i < arr.length ; i++)
			{
				let result = prompt("정수입력");
				arr[i] = result;
			}
			document.write("저장 된 배열: ");
			
			for(let i = 0 ; i < arr.length ; i++)
			{
				document.write(arr[i] + " ");
			}
			
			let reverseArr = arr.reverse();
			
			document.write("<br>역순 정렬: " + reverseArr);
		</script>
	</body>
</html>