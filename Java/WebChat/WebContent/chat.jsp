<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");

String nick = request.getParameter("nick");
if(nick == null)
{
	%>
	<script>
		alert("�г����� ������ �� ä�ù濡 �����ϼ���!!");
		document.location = "join.jsp";
	</script>
	<%
	return;
}
session.setAttribute("nick", nick);
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�� ä��</title>
		<script src="jquery-3.6.0.js"></script>
		<script src="chat.js" charset="utf-8"></script>
	</head>
	<body>
		<style>
			div
			{
				width: 700px;
				height: 300px;
				background-color: #f4f4f4;
				overflow: auto;
			}
		</style>
		<table border="1" width="700px">
			<tr>
				<td>
					<div id="chatMsg">ä�ù濡 �����Ͽ����ϴ�.</div>
				</td>
			</tr>
			<tr>
				<td>
				<form id="chat" name="chat" method="post" action="#" onsubmit="return SendMsg();">
				<input type="text" id="msg" name="msg" size="80%">
				<input type="button" id="btnSend" value="������">
				</form>
				</td>
			</tr>
		</table>		
	</body>
</html>