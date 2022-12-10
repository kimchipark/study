<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
if(LoginID == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}
String no = request.getParameter("no"); // 게시물 번호
String pageno = request.getParameter("page"); // 게시물이 있는 현재 페이지
String kind = request.getParameter("kind"); // 게시물의 장소

String sql = "";
sql += "select btitle, ";
sql += "bwdate, bnote from board where bno = " + no;

ResultSet result = stmt.executeQuery(sql);
if(result.next() == false)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
};

String btitle = result.getString("btitle");
String bwdate = result.getString("bwdate");
String bnote = result.getString("bnote");

%>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글수정</span>
		</td>
	</tr>
</table>
<script type="text/javascript">
	window.onload = function()
	{
		document.write.title.focus();
	}
	
	function CheckSubmit()
	{
		if( document.write.title.value == "")
		{
			alert("제목을 입력하세요");
			document.write.title.focus();
			return false;
		}
		
		if( document.write.contents.value == "")
		{
			alert("내용을 입력하세요");
			document.write.contents.focus();
			return false;
		}
		
		if( confirm("수정된 게시물을 저장하시겠습니까?") != 1)
		{
			return false;
		}
		return true;
	}
</script>		
<form name="write" method="post" action="modifyok.jsp" onsubmit="return CheckSubmit();">
<input type="hidden" name="no" value="<%= no %>">
<input type="hidden" name="page" value="<%= pageno %>">
<input type="hidden" name="kind" value="<%= kind %>">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">

	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">제목</td>
		<td><input type="text" name="title" style="width:95%" value="<%= btitle %>"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">구분</td>
		<td>
			<input type="radio" name="subject" value="J" <%=(kind.equals("J")) ? "checked" : ""%>>자바 학습 게시판
			<input type="radio" name="subject" value="H" <%=(kind.equals("H")) ? "checked" : ""%>>HTML 학습 게시판
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">내용</td>
		<td><textarea name="contents" style="width:95%; height:200px;"><%= bnote %></textarea></td>
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
			<input type="submit" value="글수정 완료">
			<a href="view.jsp?page=<%= pageno %>&kind=<%= kind %>&no=<%= no %>">글수정 취소</a>
		</td>
	</tr>
</table>					
</form>			
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>