<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>    
<%
LoginVO loginVO = (LoginVO)session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
	<head>	
		<meta charset="EUC-KR">
		<title>자바 학습 커뮤니티</title>
		<link rel="stylesheet" href="css/board.css"/>
	</head>
	<body>
		<table border="1" width="900px" align="center">
			<tr>
				<td colspan="3" style="height:60px;">
					<table border="0" style="width:100%; height:60px;">
						<tr>
							<td>
								<a href="index.jsp">
								<span style="color:red; font-size:15pt; font-weight:bold;">
								자바학습 커뮤니티
								</span>
								</a>
							</td>
							<td style="text-align:right;">
								<%
								if(loginVO == null )
								{
									//로그인 안된 경우
									%>
									<a href="join.jsp">회원가입</a>
									&nbsp;&nbsp;
									<a href="login.jsp">로그인</a>
									&nbsp;
									<%
								}else
								{
									//로그인 되었음.
									%>
									<b><%= loginVO.getName() %></b>님이 로그인 되었습니다.
									&nbsp;&nbsp;
									<a href="logout.jsp">로그아웃</a>
									<%
								}
								%>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="width:200px" valign="top">
					<div class="submenu"><a href="index.jsp?kind=J">자바 학습 게시판</a></div>
					<div style="height:2px; background-color:#ffffff;"></div>
					<div class="submenu"><a href="index.jsp?kind=H">HTML학습 게시판</a></div>
				</td>
				<td style="width:5px"></td>
				<td>