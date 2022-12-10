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
				for(i = 1 ; i <= 10 ; i++)
				{
					AddRow();	
				}
				
				$("#btnAdd").click(function(){
					AddRow();		
				});
			}
			
			function AddRow() // ���̺� tr�� �߰����ִ� �޼ҵ�
			{
				
				/*
				markup =  "<tr>";
				markup += "<td width='100px'>���� ���</td>";
				markup += "<td><input type='text' id='title' style='width:95%'></td>";
				markup += "<td><a href='#' onclick='javascript:DelRow($(this));'>����</a></td>";
				markup += "</tr>";
				$("#tblList").append(markup);*/
				
				//ajax�� �̿��� ���߰�
				$.ajax({
					type: "get",
					url: "addtr.jsp",
					dataType: "html",
					success : function(data)
					{
						$("#tblList").append(data);
						// ����� ���������� �̷�������� �� �Լ��� Ÿ�� �ȴ�.
					},
					error : function(xhr, status, error)
					{
						// ��� ���� �߻���
					}
				});
			}
			
			function DelRow(obj) // ���̺� tr�� �������ִ� �޼ҵ�
			{
				$(obj).parent().parent().remove();
			}
		</script>
		<input id="btnAdd" type="button" value="���߰�">
		<table border="1" width="600px" id="tblList">
		</table>
	</body>
</html>