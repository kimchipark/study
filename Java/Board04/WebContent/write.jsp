<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%
//�α��� ���� �˻�
if(loginVO == null )
{

	response.sendRedirect("index.jsp");
	return;
}
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
%>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<script>

	window.onload = function()
	{
		document.write.title.focus();
	}
	
	function CheckSubmit()
	{
		if(document.write.title.value == "")
		{
			alert("������ �Է��ϼ���.");
			document.write.title.focus();
			return false;			
		}		
		if(document.write.contents.value == "")
		{
			alert("������ �Է��ϼ���.");
			document.write.contents.focus();
			return false;			
		}
		if( confirm("�ۼ��� �Խù��� �����Ͻðڽ��ϱ�?") != 1)
		{
			return false;	
		}		
		return true;
	}

</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �۾���</span>
		</td>
	</tr>
</table>		
<form name="write" method="post" action="writeok.jsp"
	enctype="multipart/form-data" onsubmit="return CheckSubmit();">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><input type="text" name="title" style="width:95%"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td>
			<input type="radio" name="subject" value="J" <%= (kind.equals("J") ? "checked" : "") %>>�ڹ� �н� �Խ���
			<input type="radio" name="subject" value="H" <%= (kind.equals("H") ? "checked" : "") %>>HTML �н� �Խ���		
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
		<td><textarea name="contents" style="width:95%; height:200px;"></textarea></td>
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
			<input type="submit" value="�۾��� �Ϸ�">
		</td>
	</tr>
</table>					
</form>	
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>