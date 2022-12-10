<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	window.onload = function()
	{
		$("#userid").focus();
		
		$("#userpw").keypress(function(e){
			if(e.which == 13)
			{
				//alert("엔터키 눌러짐.");
				DoLogin();
			}
		});
		
		$("#btnLogin").click(function(){
			DoLogin();
		});		
	}
	
	function DoLogin()
	{
		if( $("#userid").val() == "")
		{
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return;
		}
		if( $("#userpw").val() == "")
		{
			alert("비밀번호를 입력하세요.");
			$("#userpw").focus();
			return;
		}	
		//$("#login").submit();
		$.ajax({
			type : "post",
			url: "loginok.jsp",
			dataType: "html",
			data :
			{
				userid : $("#userid").val(),
				userpw : $("#userpw").val()
			},
			success : function(data) 
			{	
				// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
				data = data.trim();
				if(data == "ERROR")
				{
					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
					$("#userid").focus();
				}else if(data == "OK")
				{
					document.location = "index.jsp";
				}
			},
			error : function(xhr, status, error) 
			{					
			}
		});				
	}
	
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 로그인</span>
		</td>
	</tr>
</table>		
<form id="login" name="login" method="post" action="loginok.jsp">
<table border="1" style="width:100%;">
	<tr>
		<td style="text-align:center;width:120px;">아이디 (*) </td>
		<td><input type="text" id="userid" name="userid"></td>
	</tr>
	<tr>
		<td style="text-align:center;width:120px;">비밀번호 (*) </td>
		<td><input type="password" id="userpw" name="userpw"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<input type="button" id="btnLogin" value="로그인하기">
		</td>
	</tr>					
</table>
</form>	
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>