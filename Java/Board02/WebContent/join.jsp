<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<form name="join" method="post" action="joinok.jsp">
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
			<td><input type="text" required name="id" placeholder="" style="width:95%"></td>
		</tr>
		<tr>
			<td>��й�ȣ (*)</td>
			<td><input type="password" required name="pw"  style="width:95%"></td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ�� (*)</td>
			<td><input type="password" required name="pwcheck" style="width:95%"></td>
		</tr>			
		<tr>
			<td>�̸� (*)</td>
			<td><input type="text" required name="name"  style="width:95%"></td>
		</tr>		
		<tr>
			<td>���� (*)</td>
			<td>
				<input type="radio" name="gender" checked>����
				<input type="radio" name="gender">����
			</td>
		</tr>		
		<tr>
			<td>��� (*)</td>
			<td>
				<select name="hobby" >
					<option value="1" selected>����</option>
					<option value="2">����</option>
					<option value="3">����</option>
				</select>
			</td>
		</tr>		
		<tr>
			<td>���ɺо�</td>
			<td>
				<input type="checkbox" value="1" name="interest"  checked>å
				<input type="checkbox" value="2" name="interest">��ȭ					
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