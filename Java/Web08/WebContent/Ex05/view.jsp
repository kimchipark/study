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

//jdbc 라이브러리 로딩
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

//줄바꿈처리
note = note.replace("\n", "<br>");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>도서조회</title>
	</head>
	<body>
		<form name="write" method="post" action="writeok.jsp">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">도서명</td>
					<td><%= title %></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">출판사</td>
					<td><%= pub %></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">저자</td>
					<td><%= author %></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">가격</td>
					<td><%= price %>원</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">등록일</td>
					<td><%= date %></td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">서평</td>
					<td><%= note %></td>
				</tr>				
				<tr>
					<td style="text-align:center;" colspan="2">
						<a href="index.jsp">목록</a>
						&nbsp; | &nbsp; 
						<a href="modify.jsp?no=<%= no %>">변경하기</a>
						&nbsp; | &nbsp;
						<a href="delete.jsp?no=<%= no %>">삭제하기</a>						
					</td>
				</tr>
			</table>		
		</form>
	</body>
</html>
<%
db.DBClose();
%>