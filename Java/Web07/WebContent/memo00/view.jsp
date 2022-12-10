<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>메모조회</title>
	</head>
	<body>
		<style>
			td
			{
				text-align:center;
			}
		</style>
		<table border="1" align="center" style="width:600px">
			<tr>
				<td style="width:100px;">제목</td>
				<td style="text-align:left">제목입니다.</td>
			</tr>
			<tr>
				<td style="width:100px;">날짜</td>
				<td style="text-align:left">2022.08.22</td>
			</tr>		
			<tr>
				<td style="width:100px;">내용</td>
				<td style="text-align:left">
				내용입니다.
				<br>
				내용입니다.
				<br>
				내용입니다.
				<br>
				내용입니다.
				<br>
				내용입니다.
				<br>
				내용입니다.
				<br>
				</td>
			</tr>			
			<tr>
				<td colspan="2" style="text-align:center">
				<a href="index.jsp">목록</a>
				&nbsp; | &nbsp; 
				<a href="modify.jsp">수정</a>
				&nbsp; | &nbsp;
				<a href="delete.jsp">삭제</a>				
				</td>
			</tr>			
		</table>
	</body>
</html>
