<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>도서조회</title>
	</head>
	<body>
		no = <%= no %>
		<form name="write" method="post" action="writeok.jsp">
			<table border="1" style="width:800px;" align="center">
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">도서명</td>
					<td>그것이 자바다.</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">출판사</td>
					<td>이젠출판사</td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">저자</td>
					<td>홍길동</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">가격</td>
					<td>10,000원</td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">등록일</td>
					<td>2022.01.01</td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">서평</td>
					<td>참 좋아요<br>참 좋아요<br>참 좋아요<br>참 좋아요<br>참 좋아요<br></td>
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