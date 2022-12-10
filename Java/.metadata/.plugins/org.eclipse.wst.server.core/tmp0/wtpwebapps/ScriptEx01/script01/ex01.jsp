<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>미니 계산기</title>
	</head>
	<body>
		<script>
		let n=[];
		document.write("난수 10개 : ");
		for( let i = 0; i< 10 ; i++)
		{
			n[i] = Math.floor(Math.random()*100 + 1);
			document.write(n[i] + " ");
		}
		document.write("<hr>");
		let big = 0;
		let min = 100;
		for(let i = 0 ; i < 10 ; i++)
		{
			if(big < n[i])
			{
				big = n[i];
			}
			if(min > n[i])
			{
				min = n[i];	
			}
		}
		document.write("최소값 : " + min);
		document.write("&nbsp&nbsp&nbsp|&nbsp&nbsp;&nbsp;");
		document.write("최대값 : " + big);
		document.write("<hr>");
		let temp;
		for( let i = 0 ; i < 10 ; i++)
		{
			for(let j = 0 ; j < 10 - i - 1 ; j++)
			{
				if(n[j] > n[j+1])
				{
					temp = n[j];
					n[j] = n[j+1];
					n[j+1] = temp;
				}
			}
		}
		document.write("오름차순 정렬 : ");
		for(let i = 0 ; i < 10 ; i++)
		{
			document.write(n[i] +" ");
		}
		</script>
	</body>
</html>