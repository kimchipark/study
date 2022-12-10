<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>
	//00:���̵� �˻� ����
	//01:���̵� �ߺ���
	//02:ȸ�� ���� ������ ���̵�
	var CheckState = "00";
	
	window.onload = function()
	{
		$("#id").focus();
		
		$("#id").keyup(function(){
			var userID = $("#id").val();
			if(userID == "")
			{
				$("#spanMsg").html("���̵� �Է��ϼ���.");
				CheckState = "00";
				return;
			}
			$.ajax({
				type : "get",
				url: "idcheck.jsp?id=" + userID,
				dataType: "html",
				success : function(data) 
				{	
					// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.	
					//$("#spanMsg").html(data);
					data = data.trim();
					if(data == "ERROR")
					{
						$("#spanMsg").html("���̵� �˻� �����Դϴ�.");
						CheckState = "00";
					}
					if(data == "DUPLICATE")
					{
						$("#spanMsg").html("�ߺ��� ���̵��Դϴ�.");
						CheckState = "01";
					}
					if(data == "NOT_DUPLICATE")
					{
						$("#spanMsg").html("��밡���� ���̵��Դϴ�.");
						CheckState = "02";
					}					
				},
				error : function(xhr, status, error) 
				{
					// ��� ���� �߻���
					$("#spanMsg").html("���̵� �˻� �����Դϴ�.");
				}
			});			
		});
		
		$("#btn_join").click(function(){
			if(CheckState == "00")
			{
				alert("���̵� �Է��ϼ���.");
				$("#id").focus();
				return;
			}
			if(CheckState == "01")
			{
				alert("�ߺ��� ���̵��Դϴ�. �ٸ� ���̵� �Է��ϼ���.");
				$("#id").focus();
				return;
			}
			if( $("#pw").val() == "")
			{
				alert("��й�ȣ�� �Է��ϼ���.");
				$("#pw").focus();
				return;				
			}
			if( $("#name").val() == "")
			{
				alert("�̸� �Է��ϼ���.");
				$("#name").focus();
				return;				
			}
			if( $("#pw").val() != $("#pwcheck").val())
			{
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				$("#pw").focus();
				return;				
			}	
			if( $("#sign").val() == "")
			{
				alert("�ڵ����� ���� �ڵ带 �Է��ϼ���.");
				$("#sign").focus();
				return;				
			}			
			
			$.ajax({
				type : "get",
				url: "getsign.jsp",
				dataType: "html",
				success : function(data) 
				{	
					// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
					data = data.trim();
					if( $("#sign").val() != data)
					{
						alert("�ڵ����� ���� �ڵ尡 ��ġ���� �ʽ��ϴ�.");
						$("#sign").focus();
					}else
					{
						if(confirm("ȸ�� ������ �����Ͻðڽ��ϱ�?") == 1)
						{
							//document.join.sumbit();
							$("#join").submit();
						}
					}
				},
				error : function(xhr, status, error) 
				{					
				}
			});				
		});
		
		$("#btn_cancel").click(function(){
			document.location = "index.jsp";
		});
		
	}
</script>
<form id="join"  name="join" method="post" action="joinok.jsp">
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:40px">
				<span style="font-weight:bold; color:red;">�� ȸ������</span>
			</td>
		</tr>																		
	</table>
	<table border="1" style="width:100%;">
		<tr>
			<td style="width:130px;">���̵� (*)</td>
			<td><input type="text" id="id" name="id" style="width:120px">
			<span id="spanMsg">���̵� �Է��ϼ���.</span></td>
		</tr>
		<tr>
			<td>��й�ȣ (*)</td>
			<td><input type="password" id="pw" name="pw"  style="width:95%"></td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ�� (*)</td>
			<td><input type="password" id="pwcheck" name="pwcheck" style="width:95%"></td>
		</tr>			
		<tr>
			<td>�̸� (*)</td>
			<td><input type="text" id="name" name="name"  style="width:95%"></td>
		</tr>		
		<tr>
			<td>���� (*)</td>
			<td>
				<input type="radio" id="gender" name="gender" checked>����
				<input type="radio" id="gender" name="gender">����
			</td>
		</tr>		
		<tr>
			<td>��� (*)</td>
			<td>
				<select id="habby" name="habby" >
					<option value="1" selected>����</option>
					<option value="2">����</option>
					<option value="3">����</option>
				</select>
			</td>
		</tr>		
		<tr>
			<td>���ɺо�</td>
			<td>
				<input type="checkbox" value="1" id="interest" name="interest"  checked>å
				<input type="checkbox" value="2" id="interest" name="interest">��ȭ					
			</td>
		</tr>	
		<tr>
			<td>�ڵ����� ����</td>
			<td>
			<img src="sign.jsp">
			�����ڵ� : <input type="text" id="sign" name="sign">					
			</td>
		</tr>			
		<tr>
			<td colspan="2" style="text-align:center;">
				<input type="button" id="btn_join" value="���ԿϷ�">
				<input type="button" id="btn_cancel" value="���">
			</td>							
		</tr>																															
	</table>
</form>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>
