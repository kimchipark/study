<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>메모변경</title>
	</head>
	<body>
		<form name="write" method="post" action="modifyok.jsp">
			<table border="1" align="center" style="width:600px">
				<tr>
					<td style="width:100px;">제목</td>
					<td style="text-align:left"><input type="text" name="title" value="제목입니다." required style="width:96%"></td>
				</tr>
				<tr>
					<td style="width:100px;">날짜</td>
					<td style="text-align:left">2022.08.22</td>
				</tr>
				<tr>
					<td style="width:100px;">내용</td>
					<td style="text-align:left"><textarea name="note" rows="5" required style="width:96%">내용입니다1.
내용입니다2.
내용입니다3.
내용입니다4.
내용입니다5.</textarea>
				</tr>			
				<tr>
					<td colspan="2" style="text-align:center">
					<input type="submit" value="저장하기">
					&nbsp; | &nbsp; 
					<a href="view.jsp">취소</a>		
					</td>
				</tr>			
			</table>
		</form>
	</body>
</html>
