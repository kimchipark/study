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
BoardVO  vo  = dto.Read(no,true);
%>
<script>


var OldTR = null;
var OldTD = null;

//댓글 변경하기
function ModifyReply(obj,rno)
{
	if(OldTR != null)
	{
		OldTR.html(OldTD);	
	}
	OldTR = $(obj).parent().parent();
	OldTD = $(obj).parent().parent().html();
	$.ajax({
		type : "get",
		url: "replymodify.jsp?rno=" + rno,
		dataType: "html",
		success : function(data) 
		{
			data = data.trim();
			$(obj).parent().parent().html(data);
			$("#runote").focus();
		},
		error : function(xhr, status, error) 
		{					
		}
	});	
}

//댓글 변경하기 완료
function ModifyReplyDone(obj,rno)
{
	var rnote = $("#runote").val();
	if(rnote == "")
	{
		alert("댓글 내용을 입력하세요.");
		$("#runote").focus();
		return;
	}
	$.ajax({
		type : "post",
		url: "replymodifyok.jsp",
		dataType: "html",
		data :
		{
			rno : rno,
			rnote : rnote
		},
		success : function(data) 
		{
			//ERROR 또는 OK 가  넘어온다.
			data = data.trim();
			if(data == "ERROR")
			{
				alert("댓글 작성 오류입니다.");	
			}else
			{
				$('#tblReply tr:not(:first)').remove();
				
				GetReplyList("<%= no %>");
			}
		},
		error : function(xhr, status, error) 
		{					
		}
	});	
};

//댓글 삭제
function DoDelete()
{
	if(confirm("해당 게시물을 삭제 하시겠습니까?") == 1)
	{
		document.location = "delete.jsp?<%= ViewParam %>&no=<%= no %>";
	}
}


//댓글 목록을 가져온다.
function GetReplyList(no)
{
	$.ajax({
		type : "get",
		url: "reply.jsp?no=" + no,
		dataType: "html",
		success : function(data) 
		{
			//alert(data);
			$("#tblReply").append(data);
		},
		error : function(xhr, status, error) 
		{					
		}
	});
}

//댓글을 삭제한다.
function DeleteReply(obj,rno)
{
	if(confirm("댓글을 삭제하시겠습니까?") !=1 ) 
	{
		return;
	}
	$.ajax({
		type : "get",
		url: "replydelete.jsp?rno=" + rno,
		dataType: "html",
		success : function(data) 
		{
			data = data.trim();
			if(data == "ERROR")
			{
				alert("댓글 삭제 오류입니다.");	
			}else
			{
				alert("댓글이 삭제되었습니다.");
				
				//a -> td > tr 을 찾는다.
				$(obj).parent().parent().remove();
			}
		},
		error : function(xhr, status, error) 
		{					
		}
	});	
}

window.onload = function()
{
	GetReplyList("<%= no %>");
	
	$("#btnReply").click(function(){
		var rnote = $("#rnote").val();
		if(rnote == "")
		{
			alert("댓글 내용을 입력하세요.");
			$("#rnote").focus();
			return;
		}
		$.ajax({
			type : "post",
			url: "replyok.jsp",
			dataType: "html",
			data :
			{
				no : <%= no %>,
				rnote : rnote
			},
			success : function(data) 
			{
				//ERROR 또는 OK 가  넘어온다.
				data = data.trim();
				if(data == "ERROR")
				{
					alert("댓글 작성 오류입니다.");	
				}else
				{
					alert("댓글이 작성되었습니다.");
					$("#rnote").val("");
					
					$('#tblReply tr:not(:first)').remove();
					
					GetReplyList("<%= no %>");
				}
			},
			error : function(xhr, status, error) 
			{					
			}
		});			
	});
}


</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글보기</span>
		</td>
	</tr>
</table>
<table border="" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">제목</td>
		<td><%= vo.getTitle() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성자</td>
		<td><%= vo.getUsername() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성일</td>
		<td><%= vo.getWdate() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">조회수</td>
		<td><%= vo.getHit() %>회</td>
	</tr>
	<tr>
		<td colspan="2">	
			<%= vo.getNote().replace("\n","<br>\n") %>
		</td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">첨부파일</td>
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
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?<%= ViewParam %>">글목록</a>
		&nbsp;|&nbsp;
		<a href="modify.jsp?<%= ViewParam %>&no=<%= no %>">글수정</a>
		&nbsp;|&nbsp;
		<a href="javascript:DoDelete();">글삭제</a>
		</td>
	</tr>																													
</table>

<br>
<table id="tblReply" border="1" style="width:100%;">
	<%
	if( loginVO != null)
	{
		%>
		<tr>
			<td width="110px"><%= loginVO.getName() %></td>
			<td><input type="text" id="rnote" name="rnote" style="width:95%"></td>
			<td width="110px" align="center"><input type="button" id="btnReply" value="작성완료"></td>
		</tr>					
		<%
	}
	%>																		
</table>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>