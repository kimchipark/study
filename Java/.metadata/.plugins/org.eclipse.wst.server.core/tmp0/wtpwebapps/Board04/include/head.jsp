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
								if(loginVO == null )
								{
									//�α��� �ȵ� ���
									%>
									<a href="join.jsp">ȸ������</a>
									&nbsp;&nbsp;
									<a href="login.jsp">�α���</a>
									&nbsp;
									<%
								}else
								{
									//�α��� �Ǿ���.
									%>
									<b><%= loginVO.getName() %></b>���� �α��� �Ǿ����ϴ�.
									&nbsp;&nbsp;
									<a href="logout.jsp">�α׾ƿ�</a>
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