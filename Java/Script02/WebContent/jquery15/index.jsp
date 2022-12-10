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
			window.onload = function()
			{
				$.ajax({
					type: "get",
					url: "getdata.jsp",
					dataType: "json",
					success : function(data)
					{
						// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
						//json 데이터 얻어오는 법
						$.each(data, function(name, value)
						{
							//alert(name + ":" + value);
							$("#" + name).html(value);
						});
					
					},
					error : function(xhr, status, error)
					{
						// 통신 오류 발생시
					}
				});
			}
		</script>
		제목 : <span id="title"></span>
		<br>
		이름 : <span id="name"></span>
	</body>
</html>