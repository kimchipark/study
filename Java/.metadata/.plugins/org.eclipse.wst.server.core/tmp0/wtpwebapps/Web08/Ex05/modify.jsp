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
db.CloseQuery();
//줄바꿈처리
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>도서변경</title>
	</head>
	<body>
		<form method="post" action="modifyok.jsp">
		<input type="hidden" name="no" value="<%=no %>">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">도서명</td>
					<td><input type="text" style="width:95%" name="title" value="<%= title %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">출판사</td>
					<td><input type="text" style="width:95%" name="pub" value="<%= pub %>"></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">저자</td>
					<td><input type="text" style="width:95%" name="author" value="<%= author %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">가격</td>
					<td><input type="text" style="width:95%" name="price" value="<%= price %>"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">등록일</td>
					<td><%=date %></td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">서평</td>
					<td><textarea style="height:300px;width:95%" name="note"><%= note %></textarea></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<input type="submit" value="저장하기">
						<a href="view.jsp?no=<%= no %>">취소</a>
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>
<%
db.DBClose();
%>