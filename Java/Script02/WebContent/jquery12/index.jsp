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
			$("#setbtn").click(function()
				{
					$.ajax({
						type: "get",
						url: "div.jsp",
						dataType: "html",
						success : function(data)
						{
							// ����� ���������� �̷�������� �� �Լ��� Ÿ�� �ȴ�.
							//alert(data);
							//$("#myDIV").html("success");
							$("#myDIV").html(data);
						},
						complete : function(data)
						{
							// ����� �����ϰų� �����߾ �� �Լ��� Ÿ�Եȴ�.
							//$("#myDIV").html("complete");
						},
						error : function(xhr, status, error)
						{
							// ��� ���� �߻���
							//$("#myDIV").html("error");
						}
					});
				}
			);	
		}
		
	</script>
	<input type="button" id="setbtn" name="setbtn" value="�׽�Ʈ" >
	<div id="myDIV">div</div>
	</body>
</html>