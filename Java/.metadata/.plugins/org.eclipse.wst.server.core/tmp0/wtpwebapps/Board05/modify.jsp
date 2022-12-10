<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%
String no = request.getParameter("no");
if(no == null)
{
	//넘어온  게시물 번호가 없는 경우
	response.sendRedirect("index.jsp");
	return;
}

String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
String pageno = request.getParameter("page");
if(pageno == null) pageno = "1";
int curpageno = Integer.parseInt(pageno);

String ViewParam = "";
ViewParam += "kind=" + kind;
ViewParam += "&";
ViewParam += "type=" + type;
ViewParam += "&";
ViewParam += "key=" + key;
ViewParam += "&";
ViewParam += "page=" + pageno;

//게시물 정보를 읽어 들인다.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,false);
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	window.onload = function()
	{
		$("#title").focus();
		
		$("#btnCancel").click(function(){
			if(confirm("글 수정을 취소하시겠습니까?") == 1)
			{
				document.location = "view.jsp?<%= ViewParam %>&no=<%= no %>";
			}
		});
		
		$("#btnSubmit").click(function(){
			if($("#title").val() == "")
			{
				alert("제목을 입력하세요.");
				$("#title").focus();
				return;			
			}	
			if($("#contents").val() == "")
			{
				alert("내용을 입력하세요.");
				$("#contents").focus();
				return;			
			}				
			if( confirm("변경된 게시물을 저장하시겠습니까?") != 1)
			{
				return;	
			}	
			$("#modify").submit();
		});		
	}
	
</script>	
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글수정</span>
		</td>
	</tr>
</table>		
<form id="modify" name="modify" method="post" action="modifyok.jsp" enctype="multipart/form-data">
<input type="hidden" id="kind" name="kind" value="<%= kind %>">
<input type="hidden" id="type" name="type" value="<%= type %>">
<input type="hidden" id="key" name="key" value="<%= key %>">
<input type="hidden" id="page" name="page" value="<%= pageno %>">
<input type="hidden" id="no" name="no" value="<%= no %>">
<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">제목</td>
		<td><input type="text" id="title" name="title" style="width:95%" value="<%= vo.getTitle() %>"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">구분</td>
		<td>
			<input type="radio" name="subject" value="J" <%= (vo.getKind().equals("J") ? "checked" : "") %>>자바 학습 게시판
			<input type="radio" name="subject" value="H" <%= (vo.getKind().equals("H") ? "checked" : "") %>>HTML 학습 게시판		
		</td>
	</tr>						
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">내용</td>
		<td><textarea id="contents" name="contents" style="width:95%; height:200px;"><%= vo.getNote() %></textarea></td>
	</tr>
	<tr>
		<td rowspan="2" style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
		<td><input name="attach" type="file" style="width:95%"></td>
	</tr>
	<tr>
		<td>
		<%
		if(!vo.getFname().equals(""))
		{
			%><a href="down.jsp?no=<%= vo.getNo() %>"><%= vo.getFname() %></a><br><%
		}else
		{
			//첨부파일 없음
			%>첨부파일이 없습니다.<%
		}
		%>		
		</td>
	</tr>
	<tr>
		<td colspan="2" style="height:1px;background-color:#cccccc"></td>
	</tr>
	<tr>
		<td style="text-align:center;" colspan="2">
			<input type="button" id="btnSubmit" value="수정 완료">
			<input type="button" id="btnCancel" value="취소">
		</td>
	</tr>
</table>
</form>		
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>