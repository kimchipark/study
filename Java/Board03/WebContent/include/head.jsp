<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
//jdbc ���̺귯�� �ε�
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/boarddb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();
String LoginID = (String)session.getAttribute("id");  //�α��� id ���� �ޱ� 
String LoginNo = (String)session.getAttribute("no");  //�α��� id ���� �ޱ� 
String LoginName = (String)session.getAttribute("name"); //�α��� name ���� �ޱ� 
%>
<!DOCTYPE html>
<html>
	<head>	
		<meta charset="EUC-KR">
		<title>�ڹ� �н� Ŀ�´�Ƽ</title>
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
								�ڹ��н� Ŀ�´�Ƽ
								</span>
								</a>
							</td>
							<td style="text-align:right;">
							<% 
							if(LoginID != null)
							{
								%>
								<b><%= LoginName %></b>�� �ݰ����ϴ�!
								&nbsp;&nbsp;
								<a href="logout.jsp">�α׾ƿ�</a>
								
								<%
							}
							else
							{
								%>
								<a href="join.jsp">ȸ������</a>
								&nbsp;&nbsp;
								<a href="login.jsp">�α���</a>
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
					<div class="submenu"><a href="index.jsp?kind=J">�ڹ� �н� �Խ���</a></div>
					<div style="height:2px; background-color:#ffffff;"></div>
					<div class="submenu"><a href="index.jsp?kind=H">HTML�н� �Խ���</a></div>
				</td>
				<td style="width:5px"></td>
				<td>