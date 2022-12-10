<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script src="./js/jquery-3.6.0.js"></script>
<script>
	
	window.onload = function()
	{
		$("#btnFind").click(function(){
			if($("#id").val() == "")
			{
				alert("���̵� �Է��ϼ���.");
				$("#id").focus();
				return;
			}
			if($("#mail").val() == "")
			{
				alert("�����ּҸ� �Է��ϼ���.");
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
				alert("���̵� �Է��ϼ���.");
				$("#id").focus();
				return;
			}
			if($("#mail").val() == "")
			{
				alert("�����ּҸ� �Է��ϼ���.");
				$("#mail").focus();
				return;
			}
			if($("#code").val() == "")
			{
				alert("�����ڵ带 �Է��ϼ���.");
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
			<span style="font-weight:bold; color:red;">�� ��й�ȣ ã��</span>
		</td>
	</tr>																		
</table>
<table border="1" style="width:100%;">
	<tr>
		<td style="width:130px;">���̵� (*)</td>
		<td><input type="text" id="id" name="id" size="20"></td>
	</tr>
	<tr>
		<td>���� �ּ� (*)</td>
		<td><input type="text" id="mail" name="mail" size="30">
			<input type="button" id="btnFind" value="�����ڵ� �ޱ�">
		</td>
	</tr>
	<tr>
		<td>�����ڵ� �Է�</td>
		<td><input type="text" id="code" name=""code"" size="30">
			<input type="button" id="btnCode" value="��й�ȣ ã��">
	</tr>																												
</table>

<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>
