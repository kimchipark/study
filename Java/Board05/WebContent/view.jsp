<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<%
String no = request.getParameter("no");
if(no == null)
{
	//�Ѿ��  �Խù� ��ȣ�� ���� ���
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

//�Խù� ������ �о� ���δ�.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,true);
%>
<script>


var OldTR = null;
var OldTD = null;

//��� �����ϱ�
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

//��� �����ϱ� �Ϸ�
function ModifyReplyDone(obj,rno)
{
	var rnote = $("#runote").val();
	if(rnote == "")
	{
		alert("��� ������ �Է��ϼ���.");
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
			//ERROR �Ǵ� OK ��  �Ѿ�´�.
			data = data.trim();
			if(data == "ERROR")
			{
				alert("��� �ۼ� �����Դϴ�.");	
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

//��� ����
function DoDelete()
{
	if(confirm("�ش� �Խù��� ���� �Ͻðڽ��ϱ�?") == 1)
	{
		document.location = "delete.jsp?<%= ViewParam %>&no=<%= no %>";
	}
}


//��� ����� �����´�.
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

//����� �����Ѵ�.
function DeleteReply(obj,rno)
{
	if(confirm("����� �����Ͻðڽ��ϱ�?") !=1 ) 
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
				alert("��� ���� �����Դϴ�.");	
			}else
			{
				alert("����� �����Ǿ����ϴ�.");
				
				//a -> td > tr �� ã�´�.
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
			alert("��� ������ �Է��ϼ���.");
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
				//ERROR �Ǵ� OK ��  �Ѿ�´�.
				data = data.trim();
				if(data == "ERROR")
				{
					alert("��� �ۼ� �����Դϴ�.");	
				}else
				{
					alert("����� �ۼ��Ǿ����ϴ�.");
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
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">�� �ۺ���</span>
		</td>
	</tr>
</table>
<table border="" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">����</td>
		<td><%= vo.getTitle() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">�ۼ���</td>
		<td><%= vo.getUsername() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">�ۼ���</td>
		<td><%= vo.getWdate() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">��ȸ��</td>
		<td><%= vo.getHit() %>ȸ</td>
	</tr>
	<tr>
		<td colspan="2">	
			<%= vo.getNote().replace("\n","<br>\n") %>
		</td>
	</tr>	
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">÷������</td>
		<td>
		<%
		if(!vo.getFname().equals(""))
		{
			%><a href="down.jsp?no=<%= vo.getNo() %>"><%= vo.getFname() %></a><br><%
		}else
		{
			//÷������ ����
			%>÷�������� �����ϴ�.<%
		}
		%>
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?<%= ViewParam %>">�۸��</a>
		&nbsp;|&nbsp;
		<a href="modify.jsp?<%= ViewParam %>&no=<%= no %>">�ۼ���</a>
		&nbsp;|&nbsp;
		<a href="javascript:DoDelete();">�ۻ���</a>
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
			<td width="110px" align="center"><input type="button" id="btnReply" value="�ۼ��Ϸ�"></td>
		</tr>					
		<%
	}
	%>																		
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="include/tail.jsp" %>