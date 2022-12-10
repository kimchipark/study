<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
UserVO loginVO = (UserVO)session.getAttribute("login");

if(loginVO == null) 
{
	out.println("ERROR");
	return;
}
String rno    = request.getParameter("rno");

ReplyDTO dto = new ReplyDTO();
ReplyVO  vo  = dto.Read(rno);

%>

	<td width="110px"><%= loginVO.getName() %></td>
	<td><input type="text" id="runote" name="runote" value="<%= vo.getNote() %>" style="width:95%"></td>
	<td width="110px" align="center"><a href="javascript:;" onclick="ModifyReplyDone(this,'<%= rno %>');">변경완료</a></td>
