<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �ۼ���</span>
		</td>
	</tr>
</table>		
<form name="login" method="post" action="writeok.jsp">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><input type="text" name="title" style="width:95%" value="�ڹ� ���� ������ ���� ���� �Դϴ�."></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td>
			<input type="radio" name="subject" checked>�ڹ� �н� �Խ���
			<input type="radio" name="subject">jsp �н� �Խ���
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><textarea name="contents" style="width:95%; height:200px;">�ڹ� ���� ������ ���� ���� �Դϴ�.
�ڹ� ���� ������ ���� ���� �Դϴ�.
�ڹ� ���� ������ ���� ���� �Դϴ�.
�ڹ� ���� ������ ���� ���� �Դϴ�.
�ڹ� ���� ������ ���� ���� �Դϴ�.
�ڹ� ���� ������ ���� ���� �Դϴ�.
</textarea></td>
						</tr>
						<tr>
							<td style="width:120px; text-align:center; background-color:#f4f4f4">÷������</td>
		<td><input name="attach" type="file" style="width:95%"></td>
	</tr>
	<tr>
		<td colspan="2" style="height:1px;background-color:#cccccc"></td>
	</tr>
	<tr>
		<td style="text-align:center;" colspan="2">
			<input type="submit" value="�ۼ��� �Ϸ�">
			<a href="view.jsp">�ۼ��� ���</a>
		</td>
	</tr>
</table>					
</form>			
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file = "include/tail.jsp" %>