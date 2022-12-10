<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	window.onload = function()
	{
		$("#userid").focus();
		
		$("#userpw").keypress(function(e){
			if(e.which == 13)
			{
				//alert("����Ű ������.");
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
			alert("���̵� �Է��ϼ���.");
			$("#userid").focus();
			return;
		}
		if( $("#userpw").val() == "")
		{
			alert("��й�ȣ�� �Է��ϼ���.");
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
				// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
				data = data.trim();
				if(data == "ERROR")
				{
					alert("���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
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
			<span style="font-weight:bold; color:red;">�� �α���</span>
		</td>
	</tr>
</table>		
<form id="login" name="login" method="post" action="loginok.jsp">
<table border="1" style="width:100%;">
	<tr>
		<td style="text-align:center;width:120px;">���̵� (*) </td>
		<td><input type="text" id="userid" name="userid"></td>
	</tr>
	<tr>
		<td style="text-align:center;width:120px;">��й�ȣ (*) </td>
		<td><input type="password" id="userpw" name="userpw"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<input type="button" id="btnLogin" value="�α����ϱ�">
		</td>
	</tr>					
</table>
</form>	
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>