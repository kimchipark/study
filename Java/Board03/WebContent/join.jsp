<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>
window.onload = function()
{
	document.join.id.focus();
}

function CheckSubmit()
{
	if(document.join.id.value == "")
	{
		alert("���̵� �Է��ϼ���.");
		document.join.id.focus();
		return false;
	}
	if(document.join.pw.value == "")
	{
		alert("��й�ȣ�� �Է��ϼ���.");
		document.join.pw.focus();
		return false;
	}
	if(document.join.name.value == "")
	{
		alert("�̸��� �Է��ϼ���.");
		document.join.name.focus();
		return false;
	}
	
	let pw = document.join.pw.value;
	let pwcheck = document.join.pwcheck.value;
	
	if(pw != pwcheck)
	{
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.join.pwcheck.value = "";
		document.join.pwcheck.focus();
		return false;
	}
	
	if( confirm("���� ȸ������ �Ͻðڽ��ϱ�?") != 1)
	{
		return false;
	}
	return true;
}
</script>
<form name="join" method="post" action="joinok.jsp" onsubmit="return CheckSubmit();">
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
			<td><input type="text"  name="id" placeholder="" style="width:95%"></td>
		</tr>
		<tr>
			<td>��й�ȣ (*)</td>
			<td><input type="password"  name="pw"  style="width:95%"></td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ�� (*)</td>
			<td><input type="password"  name="pwcheck" style="width:95%"></td>
		</tr>			
		<tr>
			<td>�̸� (*)</td>
			<td><input type="text"  name="name"  style="width:95%"></td>
		</tr>		
		<tr>
			<td>���� (*)</td>
			<td>
				<input type="radio" name="gender" value="M" checked>����
				<input type="radio" name="gender" value="F">����
			</td>
		</tr>		
		<tr>
			<td>��� (*)</td>
			<td>
				<select name="hobby" >
					<option value="001" selected>����</option>
					<option value="002">����</option>
					<option value="003">����</option>
				</select>
			</td>
		</tr>		
		<tr>
			<td>���ɺо�</td>
			<td>
				<input type="checkbox" value="001:å" name="interest"  checked>å
				<input type="checkbox" value="002:��ȭ" name="interest">��ȭ
				<input type="checkbox" value="003:��Ʃ��" name="interest">��Ʃ��							
			</td>
		</tr>		
		<tr>
			<td colspan="2" style="text-align:center;">
				<input type="submit" value="���ԿϷ�">
				<input type="button" value="���">
			</td>							
		</tr>																															
	</table>
</form>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>