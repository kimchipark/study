<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
<%@ page import="ezen.Person" %>  
<%
Person hong = new Person();
hong.setAddress("전라북도 김제시");
%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>예제 연습</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>이름</th>
				<td><%= hong.getName() %></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><%= hong.getAge() %></td>
			</tr>
			<tr>
				<th>거주지</th>
				<td><%= hong.getAddress() %></td>
			</tr>						
		</table>
	</body>
</html>