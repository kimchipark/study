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

stmt.close();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�޸𺯰�</title>
	</head>
	<body>
		<form name="write" method="post" action="modifyok.jsp">
		<input type="hidden" name="no" value="<%= no %>">
			<table border="1" align="center" style="width:600px">
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><input type="text" name="title" value="<%= title %>" required style="width:96%"></td>
				</tr>
				<tr>
					<td style="width:100px;">��¥</td>
					<td style="text-align:left"><%= wdate %></td>
				</tr>
				<tr>
					<td style="width:100px;">����</td>
					<td style="text-align:left"><textarea rows="5" name="note" required style="width:96%"><%= note %></textarea>
				</tr>			
				<tr>
					<td colspan="2" style="text-align:center">
					<input type="submit" value="�����ϱ�">
					&nbsp; | &nbsp; 
					<a href="view.jsp?no=<%= no %>">���</a>		
					</td>
				</tr>			
			</table>
		</form>
	</body>
</html>
<%
conn.close();
%>
