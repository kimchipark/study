<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String sx  = request.getParameter("x");
String sy  = request.getParameter("y");
String op  = request.getParameter("op");

int x = 0;
int y = 0;
int z = 0;
try
{
	x = Integer.parseInt(sx);
	y = Integer.parseInt(sy);
	switch(op)
	{
	case "+": z = x + y; break;
	case "-": z = x - y; break;
	case "*": z = x * y; break;
	case "/": z = x / y; break;
	}
}catch(Exception e)
{	
}
%>
<%= x %> <%= op %> <%= y %> = <%= z %>

