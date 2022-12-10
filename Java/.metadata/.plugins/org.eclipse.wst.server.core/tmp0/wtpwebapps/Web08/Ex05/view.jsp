<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}

//jdbc ���̺귯�� �ε�
DBManager db = new DBManager();
db.DBOpen();


String sql = "";
sql += "select btitle, bpub, bauthor, bprice, bdate, bnote ";
sql += "from book ";
sql += "where no= " + no;

db.OpenQuery(sql);

if( db.GetNext() == false)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

String title = db.GetValue("btitle");
String pub = db.GetValue("bpub");
String author = db.GetValue("bauthor");
String price = db.GetValue("bprice");
String date = db.GetValue("bdate");
String note = db.GetValue("bnote");

//�ٹٲ�ó��
note = note.replace("\n", "<br>");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>������ȸ</title>
	</head>
	<body>
		<form name="write" method="post" action="writeok.jsp">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">������</td>
					<td><%= title %></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">���ǻ�</td>
					<td><%= pub %></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><%= author %></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><%= price %>��</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">�����</td>
					<td><%= date %></td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">����</td>
					<td><%= note %></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<a href="index.jsp">���</a>
						&nbsp; | &nbsp; 
						<a href="modify.jsp?no=<%= no %>">�����ϱ�</a>
						&nbsp; | &nbsp;
						<a href="delete.jsp?no=<%= no %>">�����ϱ�</a>						
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>
<%
db.DBClose();
%>