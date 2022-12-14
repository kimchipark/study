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

//줄바꿈처리
note = note.replace("\n", "<br>");
stmt.close();
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
<%@ include file = "dbclose.jsp" %>