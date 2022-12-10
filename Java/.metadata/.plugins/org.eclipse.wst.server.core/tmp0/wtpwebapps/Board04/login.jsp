<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	window.onload = function()
	{
		document.login.userid.focus();
		
		document.login.userid.value = "ezen";
		document.login.userpw.value = "ezen";
	}

	function DoLogin()
	{
		if(document.login.userid.value == "")
		{
			alert("아이디를 입력하세요.");
			document.login.userid.focus();
			return false;			
		}
		if(document.login.userpw.value == "")
		{
			alert("암호를 입력하세요.");
			document.login.userpw.focus();
			return false;			
		}		
		return true;
	}
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 로그인</span>
		</td>
	</tr>
</table>		
<form name="login" method="post" action="loginok.jsp"
	onsubmit="return DoLogin();">
<table border="1" style="width:100%;">
	<tr>
		<td style="text-align:center;width:120px;">아이디 (*) </td>
		<td><input type="text" name="userid"></td>
	</tr>
	<tr>
		<td style="text-align:center;width:120px;">비밀번호 (*) </td>
		<td><input type="password" name="userpw"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<input type="submit" value="로그인하기">
		</td>
	</tr>					
</table>
</form>	
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>