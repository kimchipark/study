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
			function ShowImg(size)
			{
				$("#myimg").attr("width",size);
			}
			
			var imgname = "dog.jpg";
			function setImg()
			{
				if( imgname == "dog.jpg")
				{
					imgname = "cat.jpg";
					$("#animal").text("강아지로 변경");
				}
				else
				{
					imgname = "dog.jpg";
					$("#animal").text("고양이로 변경");
				}
				
				$("#myimg").attr("src", imgname);
			}
			
			function SetDiv()
			{
				$("#myDIV").html("<h3 style='color:red;'>hello</h3>");
				$("#yourDIV").text("<h3 style='color:red;'>hello</h3>");
			}
		</script>
		<img id="myimg" src="dog.jpg" width="20%" onmouseover="ShowImg('22%');" onmouseout="ShowImg('20%');">
		<br>
		<a href="javascript:setImg();"  id="animal">고양이로 변경</a>
		<br>
		<div id="myDIV"></div>
		<div id="yourDIV"></div>
		<a href="javascript:SetDiv();">DIV 값 변경</a>
	</body>
</html>