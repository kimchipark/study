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
		window.onload = function()
		{
			$("tr")
				.mouseover(function()
				{
					$(this).css("background-color", "yellow");
				})
				.mouseout(function()
				{
					$(this).css("background-color", "white");
				});
		}
		</script>
		<table border="1">
		<tr>
			<th style="width:100px">��ȣ</th>
			<th style="width:300px">����</th>
		</tr>
		<%
		for( int i = 1; i <= 20; i++)
		{
			%>
			<tr>
				<td align="center"><%= i %></td>
				<td>�����Դϴ�.</td>
			</tr>
			<%
		}
		%>
		</table>
	</body>
</html>