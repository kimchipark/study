<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery ����</title>
		<script src="jquery-3.6.0.js"></script>
	</head>	
	<body>
	<script type="text/javascript">
		
		var checkID = false;
		//00:���̵� �˻� ����
		//01:���̵� �ߺ���
		//02:ȸ�� ���� ������ ���̵�
		var CheckState ="00";
		window.onload = function()
		{
			
			//Ű���� �̺�Ʈ ���� : keypress, keyup, keydown
			$("#id").keyup(
				function()
				{
					var UserID = $("#id").val();
					//$("#spanMsg").html($("#id").val());
					$.ajax({
						type: "get",
						url: "idcheck.jsp?id=" + UserID,
						dataType: "xml",
						success : function(data)
						{
							//xml�� �̿��� ���̵� �ߺ��˻�
							CheckState = $(data).find("code").text();
							$("#spanMsg").html($(data).find("msg").text());
						
							// ����� ���������� �̷�������� �� �Լ��� Ÿ�� �ȴ�.
							//data = data.trim();   //html�� �Ѿ�� ���� ������ ������
							//alert("[" + data + "]"); // ���� Ȯ�ο�
							//ary = data.split(":"); //�ݷ� ������ ���ڿ��� �߶���
							//code = ary[0];       
							//msg = ary[1];
							//CheckState = code;
							//$("#spanMsg").html(msg);
						},
						error : function(xhr, status, error)
						{
							// ��� ���� �߻���
							$("#spanMsg").html("�˻� �����Դϴ�.");
						}
					});
				}
			);
		}
		function CheckSubmit()
		{
			var userID = $("#id").val();
			if( userID == "")
			{
				alert("���̵� �Է��ϼ���.");
				return false;
			}
			if( CheckState == "00")
			{
				//00:���̵� �˻� ����
				alert("���̵� �ߺ� �˻簡 ������� �ʾҽ��ϴ�.");
				return false;
			}
			if( CheckState == "01")
			{
				//01:���̵� �ߺ���
				alert("�ߺ� �� ���̵� �Դϴ�.");
				return false;
			}
			return true;
		}
	</script>
	<form name="join" method="post" action="joinok.jsp" onsubmit="return CheckSubmit();">
		<table border="0" style="width:700px; " align="center">
			<tr>
				<td style="height:40px">
					<span style="font-weight:bold; color:red;">�� ȸ������</span>
				</td>
			</tr>																		
		</table>
		<table border="1" style="width:700px; " align="center">
			<tr>
				<td style="width:130px;">���̵� (*)</td>
				<td><input type="text" id="id" name="id" size="20">
				<span id="spanMsg" name="spanMsg" style="width:200px">���̵� �Է��ϼ���.</span>
				</td>
			</tr>
			<tr>
				<td>��й�ȣ (*)</td>
				<td><input type="password" name="pw"  style="width:95%"></td>
			</tr>
			<tr>
				<td>��й�ȣ Ȯ�� (*)</td>
				<td><input type="password" name="pwcheck" style="width:95%"></td>
			</tr>			
			<tr>
				<td>�̸� (*)</td>
				<td><input type="text" name="name"  style="width:95%"></td>
			</tr>		
			<tr>
				<td>���� (*)</td>
				<td>
					<input type="radio" value="M" name="gender" checked>����
					<input type="radio" value="F" name="gender">����
				</td>
			</tr>		
			<tr>
				<td>��� (*)</td>
				<td>
					<select name="hobby" >
						<option value="001" selected>����</option>
						<option value="002">����</option>
						<option value="003">����</option>
					</select>
				</td>
			</tr>		
			<tr>
				<td>���ɺо�</td>
				<td>
					<input type="checkbox" value="001:å" name="interest"  checked>å
					<input type="checkbox" value="002:��ȭ" name="interest">��ȭ
					<input type="checkbox" value="003:��Ʃ��" name="interest">��Ʃ��
					<input type="checkbox" value="004:����" name="interest">����					
				</td>
			</tr>		
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" value="���ԿϷ�">
					<input type="button" value="���">
				</td>							
			</tr>																															
		</table>
	</form>
	</body>
</html>