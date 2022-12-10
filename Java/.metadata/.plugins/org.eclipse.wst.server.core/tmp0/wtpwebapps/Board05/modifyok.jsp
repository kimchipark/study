<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
UserVO loginVO = (UserVO)session.getAttribute("login");

request.setCharacterEncoding("euc-kr");

//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;

//enctype="multipart/form-data" 로 데이터를 받는다.
MultipartRequest multi = 
	new MultipartRequest(request,uploadPath,size,
		"EUC-KR",new DefaultFileRenamePolicy());

String kind   = multi.getParameter("kind");
String type   = multi.getParameter("type");
String key    = multi.getParameter("key");
String pageno = multi.getParameter("page");
String no     = multi.getParameter("no");

String title    = multi.getParameter("title");
String subject  = multi.getParameter("subject");
String note     = multi.getParameter("contents");

String filename = (String) multi.getFilesystemName("attach");
String phyname  = "";
if(filename != null)
{
	//랜덤한 문자열을 생성한다.
	phyname = UUID.randomUUID().toString();
	out.println("UUID:" + phyname);
	
	//업로드된 파일명을 랜덤한 문자열의 파일명으로 변경한다.
	String srcName    = uploadPath + "/" + filename;
	System.out.println(srcName);
	String targetName = uploadPath + "/" + phyname;
	System.out.println(targetName);
	File srcFile    = new File(srcName);
	File targetFile = new File(targetName);
	srcFile.renameTo(targetFile);
}

BoardVO vo = new BoardVO();
vo.setNo(no);
vo.setUserno(loginVO.getNo());
vo.setTitle(title);
vo.setKind(subject);
vo.setNote(note);
if(filename != null)
{
	vo.setFname(filename);
	vo.setPname(phyname);
}

BoardDTO dto = new BoardDTO();
dto.Update(vo);


String ViewParam = "";
ViewParam += "kind=" + kind;
ViewParam += "&";
ViewParam += "type=" + type;
ViewParam += "&";
ViewParam += "key=" + key;
ViewParam += "&";
ViewParam += "page=" + pageno;
response.sendRedirect("view.jsp?" + ViewParam + "&no=" + vo.getNo());
%>

