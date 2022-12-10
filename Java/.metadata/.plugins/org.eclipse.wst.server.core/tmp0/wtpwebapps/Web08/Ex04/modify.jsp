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
<%@ include file = "dbclose.jsp" %>