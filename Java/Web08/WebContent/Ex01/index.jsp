<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>도서관리 프로그램</title>
	</head>
	<body>
	<table border="0" style="width:800px;" align="center">
		<tr>
			<td style="height:40px">
				<span style="font-weight:bold; color:red;">※ 도서관리 프로그램</span>
			</td>
		</tr>
		<tr>
			<td style="height:25px; text-align:right;">
				<a href="write.jsp">도서등록</a>
			</td>
		</tr>						
		<tr>
			<td>
				<table border="1" style="width:100%;">
					<tr>
						<td style="text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
						<td style="text-align:center; background-color:#f2f2f2;">도서명</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">출판사</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 80px;">저자</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">가격</td>
						<td style="text-align:center; background-color:#f2f2f2;width: 70px;">등록일</td>						
					</tr>
					<%
					for(int i=0;i<10;i++)
					{
						%>
						<tr>
							<td style="text-align:center;"><%= i + 1 %></td>
							<td><a href="view.jsp">자바 기초 문법에 대한 강의 입니다.</a></td>
							<td style="text-align:center;">이젠출판사</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10,000</td>
							<td style="text-align:center;">2022.01.01</td>
						</tr>
						<%
					}
					%>
				</table>
			</td>
		</tr>
		<tr>
			<td height="40px" align="center">
			이전페이지 | 1 | 2 | 3 | 4 | 5 | 다음페이지
			</td>
		</tr>		
	</table>
	</body>
</html>