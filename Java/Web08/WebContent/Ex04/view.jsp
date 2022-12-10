<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "dbopen.jsp" %>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}


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
note = note.replace("\n", "<br>");
stmt.close();
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
<%@ include file = "dbclose.jsp" %>