<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>
	window.onload = function()
	{
		document.login.userid.focus();
	}
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �α���</span>
		</td>
	</tr>
</table>		
<form name="login" method="post" action="loginok.jsp">
<table border="1" style="width:100%;">
	<tr>
		<td style="text-align:center;width:120px;">���̵� (*) </td>
		<td><input type="text" name="userid"></td>
	</tr>
	<tr>
		<td style="text-align:center;width:120px;">��й�ȣ (*) </td>
		<td><input type="password" name="userpw"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<input type="submit" value="�α����ϱ�">
		</td>
	</tr>					
</table>
</form>			
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>