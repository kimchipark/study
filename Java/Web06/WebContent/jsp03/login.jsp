<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String userid = "";

Cookie[] cookie = request.getCookies();
if( cookie != null)
{
	for(int i=0; i < cookie.length; i++)
	{
		String name  = cookie[i].getName();
		String value = cookie[i].getValue();
		if( name.equals("userid"))
		{
			userid = value;
		}
	}
}
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>로그인</title>
	</head>
	<body>
	<form name="login" method="post" action="loginok.jsp">
		아이디 : 
		<input type="text" required name="userid" value="<%= userid %>">
		<br>
		비밀번호 : 
		<input type="password" required name="userpw" value="">
		<br>
		<input type="checkbox" name="remember" value="Y">
		아이디 기억하기
		<br>
		<input type="submit" value="로그인">
	</form>
	</body>
</html>