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
String host   = "jdbc:mysql://127.0.0.1:3306/ezen";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸���</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:700px">
			<tr>
				<td colspan="4" style="text-align:right">
				<a href="write.jsp">�۾���</a>
				</td>
			</tr>
			<tr>
				<td style="width:100px;">��ȣ</td>
				<td>����</td>
				<td style="width:120px;">��¥</td>
				<td style="width:80px;">��ȸ��</td>
			</tr>
			<% 
			int number = 1;
			int sum = 0;
			Statement stmt = conn.createStatement();
			String sql = "";
			sql += "select no, title, wdate, hit from memo ";
			sql += "order by no desc ";
			ResultSet result = stmt.executeQuery(sql);
			while(result.next())
			{
				String no = result.getString("no");
				String title = result.getString("title");
				String wdate = result.getString("wdate");
				String hit = result.getString("hit");
				
				wdate = wdate.substring(0, 10);
				
				%>
				<tr>
					<td><%= number++ %></td>
					<td style="text-align:left">
						<a href="view.jsp?no=<%= no %>"><%= title %></a>
					</td>
					<td><%= wdate %></td>
					<td><%= hit %></td>
				</tr>
				<%
				sum++;
			}
			stmt.close();
			%>
		</table>		
		<table border="1" align="center" style="width:700px">
			<tr>
				<td>��ü�Խù� : <%= sum %></td>
			</tr>
			<tr>
				<td>
				���������� | 1 | 2 | 3 | 4 | 5 | ����������
				</td>
			</tr>
		</table>
	</body>
</html>
<%
conn.close();
%>
