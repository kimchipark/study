<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>	
	<body>
		<script>
			$(document).ready(function ()
			{
				$("#menuTableA, #menuTableB, #menuTableC").css("position","fixed");
				$("#menuTableA, #menuTableB, #menuTableC").css("background-color","yellow");
				$("#menuA, #menuB, #menuC").click(
					function()
					{
						var menuID = $(this).attr("id");
						
						$("#menuTableA, #menuTableB, #menuTableC").css("display", "none");
						
						switch(menuID)
						{
						case "menuA": $("#menuTableA").toggle();
							break;
						case "menuB": $("#menuTableB").toggle();
							break;
						case "menuC": $("#menuTableC").toggle();
							break;
						}
					}
				)
				.mouseover(
					function()
					{
						$(this).css("background-color","yellow");
					}
				)
				.mouseout(
					function()
					{
						$(this).css("background-color","white");
					}
				);
				
				$("#menuTableA, #menuTableB, #menuTableC").mouseleave(
						function()
						{
							//$(this).css("display", "none");
							$(this).toggle();
						}
				);
				
			});
		</script>
		<table border="1" width="600px">
			<tr>
				<td id="menuA">�޴� 1</td>
				<td id="menuB">�޴� 2</td>
				<td id="menuC">�޴� 3</td>
			</tr>
		</table>	
		<table border="1" width="600px" style="display:none;" id="menuTableA">
			<tr>
				<td>�����޴� 1-1</td>
			</tr>
			<tr>
				<td>�����޴� 1-2</td>
			</tr>
			<tr>
				<td>�����޴� 1-3</td>
			</tr>						
		</table>
		<table border="1" width="600px" style="display:none;" id="menuTableB">
			<tr>
				<td>�����޴� 2-1</td>
			</tr>
			<tr>
				<td>�����޴� 2-2</td>
			</tr>
			<tr>
				<td>�����޴� 2-3</td>
			</tr>						
		</table>	
		<table border="1" width="600px" style="display:none;" id="menuTableC">
			<tr>
				<td>�����޴� 3-1</td>
			</tr>
			<tr>
				<td>�����޴� 3-2</td>
			</tr>
			<tr>
				<td>�����޴� 3-3</td>
			</tr>						
		</table>		
		<table border="1" width="600px">
			<tr>
				<th style="width:100px;">��ȣ</th>
				<th style="width:300px;">����</th>
			</tr>
			<%
			for(int i=1; i < 10; i++)
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