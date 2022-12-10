<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			setInterval(function(){
				GetMsg();	
			}, 1000);
			
		}
		
		function GetMsg()
		{
			var org_html = $("#chat").html();
			var new_html = "hello, jsp";
			html = org_html + "<br>" + new_html;
			$("#chat").html(html);
		}
	</script>
		<div id="chat"></div>
	</body>
</html>