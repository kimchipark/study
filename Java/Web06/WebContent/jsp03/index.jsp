<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>12번가 홈쇼핑</title>
	</head>
	<body>	
		<table border="1" width="700px" align="center">
			<tr>
				<td align="left">
					12번가 홈쇼핑
				</td>
				<td align="right">
					<%
					String userid = (String)session.getAttribute("userid");
					String username = (String)session.getAttribute("username");
					if( userid == null)
					{
						%>
						<a href="login.jsp">로그인하기</a>
						<%
					}else
					{
						%>
						<%= username %>님 반갑습니다.
						<a href="logout.jsp">로그아웃</a>
						<%
					}
					%>
				</td>				
			</tr>
			<tr>
				<td colspan="2">
				12번가 특가 상품 목록..
				<br>
				12번가 특가 상품 목록..				
				<br>
				</td>												
			</tr>
		</table>
	</body>
</html>

