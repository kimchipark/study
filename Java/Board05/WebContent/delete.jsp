<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>
<%
UserVO loginVO = (UserVO)session.getAttribute("login");
String no      = request.getParameter("no");
if(loginVO == null || no == null)
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

//�Խù� ������ �����Ѵ�.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,false);
if(!loginVO.getNo().equals(vo.getUserno()))
{
	//�Խù� �ۼ��ڰ� �ƴ�
	response.sendRedirect("index.jsp");
	return;	
}else
{
	dto.Delete(no);
	%>
	<script>
		alert("�Խù��� �����Ͽ����ϴ�.");
		document.location = "index.jsp?kind=<%= kind %>";
	</script>
	<%
}
%>

