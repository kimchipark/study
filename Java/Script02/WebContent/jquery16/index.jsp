<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
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
			
			function AddRow() // 테이블에 tr을 추가해주는 메소드
			{
				
				/*
				markup =  "<tr>";
				markup += "<td width='100px'>한줄 요약</td>";
				markup += "<td><input type='text' id='title' style='width:95%'></td>";
				markup += "<td><a href='#' onclick='javascript:DelRow($(this));'>삭제</a></td>";
				markup += "</tr>";
				$("#tblList").append(markup);*/
				
				//ajax를 이용한 줄추가
				$.ajax({
					type: "get",
					url: "addtr.jsp",
					dataType: "html",
					success : function(data)
					{
						$("#tblList").append(data);
						// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
					},
					error : function(xhr, status, error)
					{
						// 통신 오류 발생시
					}
				});
			}
			
			function DelRow(obj) // 테이블 tr을 삭제해주는 메소드
			{
				$(obj).parent().parent().remove();
			}
		</script>
		<input id="btnAdd" type="button" value="줄추가">
		<table border="1" width="600px" id="tblList">
		</table>
	</body>
</html>