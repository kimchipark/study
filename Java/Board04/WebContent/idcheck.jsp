<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>   
<%
String userid = request.getParameter("id");

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
	<script>
		//���̵� ����ϵ��� ó���Ѵ�.
		function SetUseID()
		{
			//�θ�â�� IsUseID�� true�� �����Ѵ�.
			opener.IsUseID = true;
			opener.spanMsg.innerHTML = "��밡���� ���̵��Դϴ�.";
			window.close();
		}
	</script>
	<%
	//���̵� �ߺ� �˻縦 �����Ѵ�.
	if(userid == null)
	{
		%>���̵� �Էµ��� �ʾҽ��ϴ�.<%
	}else
	{
		String sql = "";
		sql = "select uid from user where uid ='" + userid + "' ";
		db.OpenQuery(sql);
		if(db.GetNext() == false)
		{
			//�ߺ��� ���̵� ����
			%>
			�ߺ��� ���̵� �����ϴ�.
			<a href="javascript:SetUseID();">���̵� ���</a>
			<%
		}else
		{
			//�ߺ��� ���̵� ����.
			%>�ߺ��� ���̵� �����մϴ�.<%
		}
		db.CloseQuery();
	}
	%>	
	<br>
	<a href="javascript:window.close();">â �ݱ�</a>
	</body>
</html>
<%@ include file="config/dbclose.jsp" %>
