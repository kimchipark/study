<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script src="./js/jquery-3.6.0.js"></script>
<script>
	
	window.onload = function()
	{
		$("#btnFind").click(function(){
			if($("#id").val() == "")
			{
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return;
			}
			if($("#mail").val() == "")
			{
				alert("메일주소를 입력하세요.");
				$("#mail").focus();
				return;
			}
			
			$.ajax({
				type : "post",
				url: "sendcode.jsp",
				dataType: "html",
				data : 
				{
					id: $("#id").val(),
					mail: $("#mail").val()
				},				
				success : function(data) 
				{
					data = data.trim();
					alert(data);
				},
				error : function(xhr, status, error) 
				{					
				}
			});				
		});	
		
		$("#btnCode").click(function(){
			if($("#id").val() == "")
			{
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return;
			}
			if($("#mail").val() == "")
			{
				alert("메일주소를 입력하세요.");
				$("#mail").focus();
				return;
			}
			if($("#code").val() == "")
			{
				alert("인증코드를 입력하세요.");
				$("#code").focus();
				return;
			}			
			
			$.ajax({
				type : "post",
				url: "findpwok.jsp",
				dataType: "html",
				data : 
				{
					id: $("#id").val(),
					mail: $("#mail").val(),
					code: $("#code").val()
				},				
				success : function(data) 
				{
					data = data.trim();
					alert(data);
				},
				error : function(xhr, status, error) 
				{					
				}
			});	
		});		
	}
	
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 비밀번호 찾기</span>
		</td>
	</tr>																		
</table>
<table border="1" style="width:100%;">
	<tr>
		<td style="width:130px;">아이디 (*)</td>
		<td><input type="text" id="id" name="id" size="20"></td>
	</tr>
	<tr>
		<td>메일 주소 (*)</td>
		<td><input type="text" id="mail" name="mail" size="30">
			<input type="button" id="btnFind" value="인증코드 받기">
		</td>
	</tr>
	<tr>
		<td>인증코드 입력</td>
		<td><input type="text" id="code" name=""code"" size="30">
			<input type="button" id="btnCode" value="비밀번호 찾기">
	</tr>																												
</table>

<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>
