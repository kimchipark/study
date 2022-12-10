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
					dataType: "xml",
					success : function(data)
					{
						// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
						$(data).find("item").each(function() // for문처럼 아이템이 있는만큼 반복한다.
							{
								//alert($(this).find("title").text());
								//alert($(this).find("name").text());
								var title = $(this).find("title").text();
								var name = $(this).find("name").text();
								
								$("#title").html(title);
								$("#name").html(name);
							}	
						);
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