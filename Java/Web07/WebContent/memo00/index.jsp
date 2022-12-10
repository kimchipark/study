<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>메모목록</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:700px">
			<tr>
				<td colspan="3" style="text-align:right">
				<a href="write.jsp">글쓰기</a>
				</td>
			</tr>
			<tr>
				<td style="width:100px;">번호</td>
				<td>제목</td>
				<td style="width:120px;">날짜</td>
			</tr>
			<% 
			for(int i=1; i <= 10; i++)
			{
				%>
				<tr>
					<td><%= i %></td>
					<td style="text-align:left">
						<a href="view.jsp">제목입니다.</a>
					</td>
					<td>2022.08.22</td>
				</tr>
				<%
			}
			%>
		</table>		
		<table border="1" align="center" style="width:700px">
			<tr>
				<td>전체게시물 :  10</td>
			</tr>
			<tr>
				<td>
				이전페이지 | 1 | 2 | 3 | 4 | 5 | 다음페이지
				</td>
			</tr>
		</table>
	</body>
</html>
