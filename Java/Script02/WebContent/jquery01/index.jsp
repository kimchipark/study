<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<style>	
	.mainMenu
	{
		position: absolute;
		background-color: yellow;		
	}
	</style>
	<script>
		window.onload = function()
		{
			$("#menuA").css("display","none");
			$("#menuB").css("display","none");
		}
		
		function ShowMenuA()
		{
			$("#menuA").css("display","");
			$("#menuB").css("display","none");			
		}
		
		function ShowMenuB()
		{
			$("#menuA").css("display","none");
			$("#menuB").css("display","");			
		}		
		</script>
	<body>
		<table border="1" width="200px">
			<tr>
				<td><a href="javascript:ShowMenuA();">�޴�1</a></td>
				<td><a href="javascript:ShowMenuB();">�޴�2</a></td>
			</tr>
		</table>
		
		<table id="menuA" class="mainMenu" border="1" width="200px">
			<tr>
				<td>����޴� 1-1</td>
			</tr>
			<tr>
				<td>����޴� 1-2</td>
			</tr>
		</table>		
		
		<table id="menuB"  class="mainMenu"  border="1" width="200px">
			<tr>
				<td>����޴� 2-1</td>
			</tr>
			<tr>
				<td>����޴� 2-2</td>
			</tr>
		</table>
		
		<table border="0" style="width:100%;">
			<tr>
				<td style="height:40px">
					<span style="font-weight:bold; color:red;">�� �ڹ��н� �Խ���</span>
				</td>
			</tr>
			<tr>
				<td style="height:25px; text-align:right;">
					<a href="write.html">�۾���</a>
				</td>
			</tr>						
			<tr>
				<td>
					<table border="0" style="width:100%;">
						<tr>
							<td style="text-align:center; background-color:#f2f2f2; width: 60px;">��ȣ</td>
							<td style="text-align:center; background-color:#f2f2f2;">����</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 80px;">�ۼ���</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 80px;">�ۼ���</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 70px;">��ȸ��</td>						
						</tr>
						<tr>
							<td style="text-align:center;">1</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">2</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">3</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">4</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">5</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">6</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">7</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">8</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">9</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">10</td>
							<td><a href="view.html">�ڹ� ���� ������ ���� ���� �Դϴ�.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">ȫ�浿</td>
							<td style="text-align:center;">10</td>
						</tr>
					</table>							
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
				�� 1 2 3 4 5 6 7 8 9  ��
				</td>
			</tr>												
		</table>	
	</body>
</html>