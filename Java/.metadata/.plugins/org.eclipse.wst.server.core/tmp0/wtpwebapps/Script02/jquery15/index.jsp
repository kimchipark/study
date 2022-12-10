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
			window.onload = function()
			{
				$.ajax({
					type: "get",
					url: "getdata.jsp",
					dataType: "json",
					success : function(data)
					{
						// ����� ���������� �̷�������� �� �Լ��� Ÿ�� �ȴ�.
						//json ������ ������ ��
						$.each(data, function(name, value)
						{
							//alert(name + ":" + value);
							$("#" + name).html(value);
						});
					
					},
					error : function(xhr, status, error)
					{
						// ��� ���� �߻���
					}
				});
			}
		</script>
		���� : <span id="title"></span>
		<br>
		�̸� : <span id="name"></span>
	</body>
</html>