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
String no    = request.getParameter("no");
String rnote = request.getParameter("rnote");

//ReplyVO�� �����Ѵ�.
ReplyVO vo = new ReplyVO();
vo.setNo(no);
vo.setNote(rnote);
vo.setUsername(loginVO.getName());
vo.setUserno(loginVO.getNo());

//ReplyDTO�� �̿��Ͽ� DB�� �����Ѵ�.
ReplyDTO dto = new ReplyDTO();
dto.Insert(vo);

out.println("OK");
%>
