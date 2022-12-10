<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%
//로그인 여부 검사
if(loginVO == null )
{

	response.sendRedirect("index.jsp");
	return;
}
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	window.onload = function()
	{
		document.write.title.focus();
	}
	
	function CheckSubmit()
	{
		if(document.write.title.value == "")
		{
			alert("제목을 입력하세요.");
			document.write.title.focus();
			return false;			
		}		
		if(document.write.contents.value == "")
		{
			alert("내용을 입력하세요.");
			document.write.contents.focus();
			return false;			
		}
		if( confirm("작성된 게시물을 저장하시겠습니까?") != 1)
		{
			return false;	
		}		
		return true;
	}

</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글쓰기</span>
		</td>
	</tr>
</table>		
<form name="write" method="post" action="writeok.jsp"
	enctype="multipart/form-data" onsubmit="return CheckSubmit();">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">제목</td>
		<td><input type="text" name="title" style="width:95%"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">구분</td>
		<td>
			<input type="radio" name="subject" value="J" <%= (kind.equals("J") ? "checked" : "") %>>자바 학습 게시판
			<input type="radio" name="subject" value="H" <%= (kind.equals("H") ? "checked" : "") %>>HTML 학습 게시판		
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">내용</td>
		<td><textarea name="contents" style="width:95%; height:200px;"></textarea></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
		<td><input name="attach" type="file" style="width:95%"></td>
	</tr>
	<tr>
		<td colspan="2" style="height:1px;background-color:#cccccc"></td>
	</tr>
	<tr>
		<td style="text-align:center;" colspan="2">
			<input type="submit" value="글쓰기 완료">
		</td>
	</tr>
</table>					
</form>	
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>