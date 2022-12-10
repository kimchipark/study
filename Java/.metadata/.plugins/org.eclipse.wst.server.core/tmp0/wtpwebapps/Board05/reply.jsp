<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
UserVO loginVO = (UserVO)session.getAttribute("login");
String no = request.getParameter("no");
ReplyDTO dto = new ReplyDTO();
dto.GetList(no);

int total = dto.GetListTotal();
for(int i=0; i < total; i++)
{
	ReplyVO vo = dto.GetItem(i);
	%>
	<tr id="trRow">
		<td width="110px"><%= vo.getUsername() %></td>
		<td><%= vo.getNote() %>
			<%
			if(loginVO != null && loginVO.getNo().equals(vo.getUserno()))
			{
				%>
				[<a href="javascript:;" onclick="DeleteReply(this,'<%= vo.getRno() %>');">����</a>]
				[<a href="javascript:;" onclick="ModifyReply(this,'<%= vo.getRno() %>');">����</a>]
				<%
			}
			%>
		</td>
		<td width="110px" align="center"><%= vo.getWdate() %></td>
	</tr>	
	<%
}
%>