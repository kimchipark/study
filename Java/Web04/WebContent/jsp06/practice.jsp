<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>
<%
	String sx = request.getParameter("x");
	String sy = request.getParameter("y");
	String op = request.getParameter("op");
	
	int x = 0; 
	int y = 0;
	int result = 0;
	try
	{
		Cal cal = new Cal(Integer.parseInt(sx), Integer.parseInt(sy) );
		x = cal.getX();
		y = cal.getY();
		result = cal.Calculator(op);
	}
	catch(Exception E)
	{
		
	}
	
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>계산기 연습</title>
	</head>
	<body>
	<form method="post" action="practice.jsp">
	<input type="text" size="3" name="x" value="<%= x %>">
			<select name="op" >
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
			<input type="text" size="3" name="y" value="<%= y %>">
			<input type="submit" value="계산">
			<input type="text" size="10" name="y" value="<%= result%>" readonly>
			
	</form>
	</body>
</html>