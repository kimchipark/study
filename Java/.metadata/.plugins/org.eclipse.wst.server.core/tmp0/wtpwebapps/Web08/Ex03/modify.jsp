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
String host   = "jdbc:mysql://127.0.0.1:3306/bookdb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//�����ͺ��̽��� �����Ѵ�.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();

String sql = "";
sql += "select btitle, bpub, bauthor, bprice, bdate, bnote ";
sql += "from book ";
sql += "where no= " + no;

ResultSet result = stmt.executeQuery(sql);

if( result.next() == false)
{
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String title = result.getString("btitle");
String pub = result.getString("bpub");
String author = result.getString("bauthor");
String price = result.getString("bprice");
String date = result.getString("bdate");
String note = result.getString("bnote");

//�ٹٲ�ó��
stmt.close();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��������</title>
	</head>
	<body>
		<form method="post" action="modifyok.jsp">
		<input type="hidden" name="no" value="<%=no %>">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">������</td>
					<td><input type="text" style="width:95%" name="title" value="<%= title %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">���ǻ�</td>
					<td><input type="text" style="width:95%" name="pub" value="<%= pub %>"></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><input type="text" style="width:95%" name="author" value="<%= author %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><input type="text" style="width:95%" name="price" value="<%= price %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">�����</td>
					<td><%=date %></td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><textarea style="height:300px;width:95%" name="note"><%= note %></textarea></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<input type="submit" value="�����ϱ�">
						<a href="view.jsp?no=<%= no %>">���</a>
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>