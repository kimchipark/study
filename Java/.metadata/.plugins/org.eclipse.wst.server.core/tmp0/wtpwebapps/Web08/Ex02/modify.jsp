<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String no = request.getParameter("no");
if( no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
out.print("no=" + no);
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
					<td><input type="text" style="width:95%" name="title"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">출판사</td>
					<td><input type="text" style="width:95%" name="pub"></td>
				</tr>						
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">저자</td>
					<td><input type="text" style="width:95%" name="author"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">가격</td>
					<td><input type="text" style="width:95%" name="price"></td>
				</tr>
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">등록일</td>
					<td>2022.01.01</td>
				</tr>				
				<tr>
					<td style="width:120px; text-align:center; background-color:#f4f4f4">서평</td>
					<td><textarea style="height:300px;width:95%" name="note"></textarea></td>
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