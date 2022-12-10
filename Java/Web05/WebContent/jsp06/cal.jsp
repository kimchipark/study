<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.Calculater" %> 
<%
	String x  = request.getParameter("x");
	String y  = request.getParameter("y");
	String op = request.getParameter("op");
	String z  = "0";
	
	if(x  == null) x  = "0";
	if(y  == null) y  = "0";
	if(op == null) op = "+";
	
	Calculater c = new Calculater();
	int result = c.DoCal(x,y,op);
	z = Integer.toString(result);
	
	Cookie cookie1 = new Cookie("x",x);
	cookie1.setMaxAge(60);
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("y",y);
	cookie2.setMaxAge(60);
	response.addCookie(cookie2);
	
	Cookie[] cookie = request.getCookies();
	//x와 y의 파라미터 값이 null이고, 쿠키가 null이 아닐때만 정보를 읽어서 각 값에 쿠키값을 넣어준다.
	if( request.getParameter("x") == null && request.getParameter("y") == null && cookie != null)
	{
		for(int i=0; i < cookie.length; i++)
		{
			String name  = cookie[i].getName();
			String value = cookie[i].getValue();
			if( name.equals("x"))
			{
				x = value;
			}
			if( name.equals("y"))
			{
				y = value;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>예제 연습</title>
	</head>
	<body>
		<form name="f" method="get" action="cal.jsp">
			<input type="text" size="5" name="x" value="<%= x %>">
			<select name="op">
				<option value="+" <%= op.equals("+") ? "selected" : "" %>>+</option>
				<option value="-" <%= op.equals("-") ? "selected" : "" %>>-</option>					
				<option value="*" <%= op.equals("*") ? "selected" : "" %>>*</option>										
				<option value="/" <%= op.equals("/") ? "selected" : "" %>>/</option>					
			</select>			
			<input type="text" size="5" name="y" value="<%= y %>">
			<input type="submit" value="=">
			<input type="text" size="5" name="z" readoly  value="<%= z %>" style="background-color:#f4f4f4">
		</form>	
	</body>
</html>