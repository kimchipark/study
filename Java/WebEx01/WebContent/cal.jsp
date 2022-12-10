<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>

<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	
	if(x == null) x = "0";
	if(y == null) y = "0";
	if(op == null) op = "+";
	
	Calculater cal = new Calculater();
	
	Cookie cookie1 = new Cookie("x", x);
	cookie1.setMaxAge(60);
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("y", x);
	cookie2.setMaxAge(60);
	response.addCookie(cookie2);
	
	Cookie[] cookie = request.getCookies();
	
	if(request.getParameter("x") == null && request.getParameter("y") == null && cookie != null)
	{
		for( int i = 0; i < cookie.length ; i++)
		{
			String name = cookie[i].getName();
			String value = cookie[i].getValue();
			
			if(name.equals("x"))
			{
				x = value;
			}
			
			if(name.equals("y"))
			{
				y = value;
			}
		}
	}
	
	String result = Integer.toString(cal.Docal(x, y, op));
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="EUC-KR">
		<title>계산기 연습</title>
	</head>
	<body>
		<form name="f" method="post" action="cal.jsp" >
			<input type="text" size="5" name="x" value="<%= x %>">
			<select name="op">
				<option value="+" <%=op.equals("+") ? "selected" : "" %>>+</option>
				<option value="-" <%=op.equals("-") ? "selected" : "" %>>-</option>
				<option value="*" <%=op.equals("*") ? "selected" : "" %>>*</option>
				<option value="/" <%=op.equals("/") ? "selected" : "" %>>/</option>
			</select>
			<input type="text" size="5" name="y" value="<%= y %>">
			<input type="submit" value="=">
			<input type="text" size="5" name="result" value="<%= result %>" disabled>
		</form>
	</body>
</html>