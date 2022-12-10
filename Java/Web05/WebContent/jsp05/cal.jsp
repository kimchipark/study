<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String x  = request.getParameter("x");
	String y  = request.getParameter("y");
	String op = request.getParameter("op");
	String z  = "0";
	
	if(x  == null) x  = "0";
	if(y  == null) y  = "0";
	if(op == null) op = "+";
	
	try
	{
		x = x.replace(",","");
		y = y.replace(",","");	
		int ix = Integer.parseInt(x);
		int iy = Integer.parseInt(y);
		int iz = 0;
		switch(op)
		{
		case "+": iz = ix + iy; break;
		case "-": iz = ix - iy; break;
		case "*": iz = ix * iy; break;
		case "/": iz = ix / iy; break;
		}
		z = Integer.toString(iz);
	}catch(Exception e)
	{
		z = "계산오류";
	}
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>예제 연습</title>
	</head>
	<body>
		<form method="get" action="cal.jsp">
			<input type="text" size="5" name="x" value="<%= x %>">
			<select name="op">
				<option value="+" <%= op.equals("+") ? "selected" : "" %>>+</option>
				<%
				if(op.equals("-") == true)
				{
					%><option value="-" selected>-</option><%					
				}else
				{
					%><option value="-">-</option><%
				}	
				if(op.equals("*") == true)
				{
					%>
					<option value="*" selected>*</option>					
					<%					
				}else
				{
					%>
					<option value="*">*</option>					
					<%
				}				
				if(op.equals("/") == true)
				{
					%>
					<option value="/" selected>/</option>					
					<%					
				}else
				{
					%>
					<option value="/">/</option>					
					<%
				}				
				%>	
			</select>			
			<input type="text" size="5" name="y" value="<%= y %>">
			<input type="submit" value="=">
			<input type="text" size="5" name="z" readoly  value="<%= z %>" style="background-color:#f4f4f4">
		</form>	
	</body>
</html>