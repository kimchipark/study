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
String rnote = request.getParameter("rnote");

//ReplyVO�� �����Ѵ�.
ReplyVO vo = new ReplyVO();
vo.setRno(rno);
vo.setNote(rnote);

//ReplyDTO�� �̿��Ͽ� DB�� �����Ѵ�.
ReplyDTO dto = new ReplyDTO();
dto.Update(vo);

out.println("OK");
%>
