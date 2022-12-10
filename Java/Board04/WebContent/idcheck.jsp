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
		//아이디를 사용하도록 처리한다.
		function SetUseID()
		{
			//부모창의 IsUseID를 true로 변경한다.
			opener.IsUseID = true;
			opener.spanMsg.innerHTML = "사용가능한 아이디입니다.";
			window.close();
		}
	</script>
	<%
	//아이디 중복 검사를 수행한다.
	if(userid == null)
	{
		%>아이디가 입력되지 않았습니다.<%
	}else
	{
		String sql = "";
		sql = "select uid from user where uid ='" + userid + "' ";
		db.OpenQuery(sql);
		if(db.GetNext() == false)
		{
			//중복된 아이디가 없음
			%>
			중복된 아이디가 없습니다.
			<a href="javascript:SetUseID();">아이디 사용</a>
			<%
		}else
		{
			//중복된 아이디가 있음.
			%>중복된 아이디가 존재합니다.<%
		}
		db.CloseQuery();
	}
	%>	
	<br>
	<a href="javascript:window.close();">창 닫기</a>
	</body>
</html>
<%@ include file="config/dbclose.jsp" %>
