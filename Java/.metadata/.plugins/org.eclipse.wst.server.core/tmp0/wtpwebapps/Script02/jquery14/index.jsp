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
					dataType: "xml",
					success : function(data)
					{
						// ����� ���������� �̷�������� �� �Լ��� Ÿ�� �ȴ�.
						$(data).find("item").each(function() // for��ó�� �������� �ִ¸�ŭ �ݺ��Ѵ�.
							{
								//alert($(this).find("title").text());
								//alert($(this).find("name").text());
								var title = $(this).find("title").text();
								var name = $(this).find("name").text();
								
								$("#title").html(title);
								$("#name").html(name);
							}	
						);
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