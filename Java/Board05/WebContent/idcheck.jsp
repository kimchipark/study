<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
String UserID = request.getParameter("id");

UserDTO dto = new UserDTO();
int code = dto.IsDuplicate(UserID);
if(code == UserDTO.ID_ERROR)
{
	out.print("ERROR");
}
if(code == UserDTO.DUPLICATE)
{
	out.print("DUPLICATE");
}
if(code == UserDTO.NOT_DUPLICATE)
{
	out.print("NOT_DUPLICATE");
}
%>