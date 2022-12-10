<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %> 
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
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
Statement stmt = conn.createStatement();

String sql = "";
sql += "select no, title, note, wdate, hit ";
sql += "from memo ";
sql += "where no= " + no;

ResultSet result = stmt.executeQuery(sql);

if( result.next() == false)
{
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String title = result.getString("title");
String note = result.getString("note");
String wdate = result.getString("wdate");
String hit = result.getString("hit");

sql = "update memo set hit = hit + 1 ";
sql += "where no = " + no;
stmt.executeUpdate(sql);

stmt.close();

//�ٹٲ�ó��
note = note.replace("\n", "<br>");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸���ȸ</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:600px">
			<tr>
				<td style="width:100px;">����</td>
				<td style="text-align:left"><%= title %></td>
			</tr>
			<tr>
				<td style="width:100px;">��¥</td>
				<td style="text-align:left"><%= wdate %></td>
			</tr>	
			<tr>
				<td style="width:100px;">��ȸ��</td>
				<td style="text-align:left"><%= hit %></td>
			</tr>				
			<tr>
				<td style="width:100px;">����</td>
				<td style="text-align:left">
				<%= note %>
				</td>
			</tr>			
			<tr>
				<td colspan="2" style="text-align:center">
				<a href="index.jsp">���</a>
				&nbsp; | &nbsp; 
				<a href="modify.jsp?no=<%= no %>">����</a>
				&nbsp; | &nbsp;
				<a href="delete.jsp?no=<%= no %>">����</a>				
				</td>
			</tr>			
		</table>
	</body>
</html>
<%
conn.close();
%>
