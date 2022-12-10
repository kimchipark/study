<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
//jdbc 라이브러리 로딩
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/boarddb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();
String LoginID = (String)session.getAttribute("id");  //로그인 id 세션 받기 
String LoginNo = (String)session.getAttribute("no");  //로그인 id 세션 받기 
String LoginName = (String)session.getAttribute("name"); //로그인 name 세션 받기 
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
							if(LoginID != null)
							{
								%>
								<b><%= LoginName %></b>님 반갑습니다!
								&nbsp;&nbsp;
								<a href="logout.jsp">로그아웃</a>
								
								<%
							}
							else
							{
								%>
								<a href="join.jsp">회원가입</a>
								&nbsp;&nbsp;
								<a href="login.jsp">로그인</a>
								&nbsp;
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