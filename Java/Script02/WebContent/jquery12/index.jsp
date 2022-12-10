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
			$("#setbtn").click(function()
				{
					$.ajax({
						type: "get",
						url: "div.jsp",
						dataType: "html",
						success : function(data)
						{
							// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
							//alert(data);
							//$("#myDIV").html("success");
							$("#myDIV").html(data);
						},
						complete : function(data)
						{
							// 통신이 성공하거나 실패했어도 이 함수를 타게된다.
							//$("#myDIV").html("complete");
						},
						error : function(xhr, status, error)
						{
							// 통신 오류 발생시
							//$("#myDIV").html("error");
						}
					});
				}
			);	
		}
		
	</script>
	<input type="button" id="setbtn" name="setbtn" value="테스트" >
	<div id="myDIV">div</div>
	</body>
</html>