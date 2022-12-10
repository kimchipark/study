<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>
<%
UserVO loginVO = (UserVO)session.getAttribute("login");
String no      = request.getParameter("no");
if(loginVO == null || no == null)
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

//게시물 정보를 삭제한다.
BoardDTO dto = new BoardDTO();
BoardVO  vo  = dto.Read(no,false);
if(!loginVO.getNo().equals(vo.getUserno()))
{
	//게시물 작성자가 아님
	response.sendRedirect("index.jsp");
	return;	
}else
{
	dto.Delete(no);
	%>
	<script>
		alert("게시물을 삭제하였습니다.");
		document.location = "index.jsp?kind=<%= kind %>";
	</script>
	<%
}
%>

