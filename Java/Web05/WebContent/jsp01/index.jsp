<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
<%@ page import="ezen.Person" %>  
<%
Person hong = new Person();
hong.setAddress("����ϵ� ������");
%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>���� ����</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>�̸�</th>
				<td><%= hong.getName() %></td>
			</tr>
			<tr>
				<th>����</th>
				<td><%= hong.getAge() %></td>
			</tr>
			<tr>
				<th>������</th>
				<td><%= hong.getAddress() %></td>
			</tr>						
		</table>
	</body>
</html>