<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�̴� ����</title>
	</head>
	<body>
		<script>
		window.onload = function()
		{
			document.cal.x.focus();
		}
		
		function DoCal(mode)
		{
			x = document.cal.x.value;
			if( x == "")
			{
				if(mode == 0)
				{
					alert("x���� �Է��ϼ���.");	
				}
				document.cal.x.focus();
				return
			}
			y = document.cal.y.value;
			if( y == "")
			{
				if(mode == 0)
				{
					alert("y���� �Է��ϼ���.");	
				}
				document.cal.y.focus();
				return
			}
			x = parseFloat(x);
			y = parseFloat(y);
			
			op = document.cal.op.value;
			switch(op)
			{
			case "+": z = x + y ; break;
			case "-": z = x - y ; break;
			case "*": z = x * y ; break;
			case "/":
				if( y == 0)
				{
					alert("0���� ���� �� �����ϴ�.");
					return;
				}
				z = x / y ; break;
			}
			
			document.cal.z.value = z;
			document.cal.x.value = "";
			document.cal.y.value = "";
		}
		</script>
		<form id="cal" name="cal">
			<input type="text" size="4" id="x" name="x">
			<select id="op" name="op" onchange="DoCal(1);">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
			<input type="text" size="4" id="y" name="y">
			<input type="button" value="=" onclick="DoCal(0);">
			<input type="text" size="4" id="z" name="z" readonly>
		</form>
			
	</body>
</html>