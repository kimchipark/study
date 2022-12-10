<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String sx = request.getParameter("x");
String sy = request.getParameter("y");
String op = request.getParameter("op");
if(op == null) op = "+";

int x = 0;
int y = 0;
int z = 0;
try
{
	x = Integer.parseInt(sx);
	y = Integer.parseInt(sy);
	//op따라 계산한다.
	if( op.equals("+") ) z = x + y;
	if( op.equals("-") ) z = x - y;
	if( op.equals("*") ) z = x * y;
	if( op.equals("/") ) z = x / y;
}catch(Exception e)
{
}
%>    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>예제 연습</title>
	</head>
	<body>
		<style>
		input
		{
			text-align: right;
		}
		input:focus
		{
			background-color: yellow;
		}
		select:focus
		{
			background-color: yellow;
		}
		</style>
		<script>
			window.onload = function()
			{
				document.myform.x.focus();
			}
		</script>
		<form name="myform" method="get" action="index.jsp">
			<input type="text" size="3" name="x"
			value="<%= x %>">
			<select name="op">
				<option value="+"
				<%= op.equals("+") ? "selected" : "" %> >+</option>
				<option value="-"
				<%= op.equals("-") ? "selected" : "" %> >-</option>
				<option value="*"
				<%= op.equals("*") ? "selected" : "" %> >*</option>
				<option value="/"
				<%= op.equals("/") ? "selected" : "" %> >/</option>
			</select>
			<input type="text" size="3" name="y"
			value="<%= y %>">
			<input type="submit" value="=">
			<input type="text" size="6" name="z"
			style="background-color:#cccccc"
			readonly disabled value="<%= z %>">			
		</form>
	</body>
</html>