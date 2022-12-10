/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-05 07:13:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/include/head.jsp", Long.valueOf(1662100515999L));
    _jspx_dependants.put("/include/tail.jsp", Long.valueOf(1662016621985L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.SQLException");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

//jdbc 라이브러리 로딩
Class.forName("com.mysql.cj.jdbc.Driver");	

Connection conn = null;
String host   = "jdbc:mysql://127.0.0.1:3306/boarddb";
host += "?useUnicode=true&characterEncoding=utf-8";
host += "&serverTimezone=UTC";
String userid = "root";
String userpw = "ezen";

//데이터베이스에 연결한다.
conn = DriverManager.getConnection(host,userid,userpw);
Statement stmt = conn.createStatement();
String LoginID = (String)session.getAttribute("id");  //로그인 id 세션 받기 
String LoginNo = (String)session.getAttribute("no");  //로그인 id 세션 받기 
String LoginName = (String)session.getAttribute("name"); //로그인 name 세션 받기 

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\t\r\n");
      out.write("\t\t<meta charset=\"EUC-KR\">\r\n");
      out.write("\t\t<title>자바 학습 커뮤니티</title>\r\n");
      out.write("\t\t <link rel=\"stylesheet\" href=\"css/board.css\"/>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<table border=\"1\" width=\"900px\" align=\"center\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"3\" style=\"height:60px;\">\r\n");
      out.write("\t\t\t\t\t<table border=\"0\" style=\"width:100%; height:60px;\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"index.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span style=\"color:red; font-size:15pt; font-weight:bold;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t자바학습 커뮤니티\r\n");
      out.write("\t\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:right;\">\r\n");
      out.write("\t\t\t\t\t\t\t");
 
							if(LoginID != null)
							{
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<b>");
      out.print( LoginName );
      out.write("</b>님 반갑습니다!\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t");

							}
							else
							{
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"join.jsp\">회원가입</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"login.jsp\">로그인</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t");

							}
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td style=\"width:200px\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t<div class=\"submenu\"><a href=\"index.jsp?kind=J\">자바 학습 게시판</a></div>\r\n");
      out.write("\t\t\t\t\t<div style=\"height:2px; background-color:#ffffff;\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"submenu\"><a href=\"index.jsp?kind=H\">HTML학습 게시판</a></div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td style=\"width:5px\"></td>\r\n");
      out.write("\t\t\t\t<td>");
      out.write('\r');
      out.write('\n');


String no = request.getParameter("no"); // 게시물 번호
String pageno = request.getParameter("page"); // 게시물이 있는 현재 페이지
String kind = request.getParameter("kind"); // 게시물의 장소
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || pageno == null || kind == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}
String sql = "";
sql += "select btitle, ";
sql += "(select uname from user where uno = board.uno) as uname, ";
sql += "uno, bwdate, bnote, bhit from board where bno = " + no;

ResultSet result = stmt.executeQuery(sql);
if(result.next() == false)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
};

String btitle = result.getString("btitle");
String uname = result.getString("uname");
String bwdate = result.getString("bwdate");
String bnote = result.getString("bnote");
String bhit = result.getString("bhit");
String uno = result.getString("uno");

//게시물을 볼때마다 조회수가 올라가는 구문
sql = "update board set bhit = bhit + 1 ";
sql += "where bno = " + no;
stmt.executeUpdate(sql);

bnote = bnote.replace("\n", "<br>");

      out.write("\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tfunction DoDelete()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(confirm(\"게시물을 삭제 하시겠습니까?\") == 1)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tdocument.location = \"delete.jsp?page=");
      out.print( pageno );
      out.write("&kind=");
      out.print( kind );
      out.write("&no=");
      out.print( no );
      out.write("\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction ReplyCheck()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(document.reply.rnote.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"댓글 내용을 작성하세요.\");\r\n");
      out.write("\t\t\tdocument.reply.rnote.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(confirm(\"댓글을 작성하시겠습니까?\") != 1)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction DoDeleteReply(reno)\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(confirm(\"댓글을 삭제 하시겠습니까?\") == 1)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tdocument.location = \"deletereply.jsp?page=");
      out.print( pageno );
      out.write("&kind=");
      out.print( kind );
      out.write("&no=");
      out.print( no );
      out.write("&reno=\" + reno;\r\n");
      out.write("\t\t}\t\t\r\n");
      out.write("\t}\n");
      out.write("</script>\r\n");
      out.write("<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"height:40px\">\r\n");
      out.write("\t\t\t<span style=\"font-weight:bold; color:red;\">※ 글보기</span>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table border=\"1\" style=\"width:100%;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"background-color:#f4f4f4; width:120px;\">제목</td>\r\n");
      out.write("\t\t<td>");
      out.print( btitle );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"background-color:#f4f4f4; width:120px;\">작성자</td>\r\n");
      out.write("\t\t<td>");
      out.print( uname );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"background-color:#f4f4f4; width:120px;\">작성일</td>\r\n");
      out.write("\t\t<td>");
      out.print( bwdate );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"background-color:#f4f4f4; width:120px;\">조회수</td>\r\n");
      out.write("\t\t<td>");
      out.print( bhit );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\">\t\r\n");
      out.write("\t\t\t");
      out.print( bnote );
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"background-color:#f4f4f4; width:120px;\">첨부파일</td>\r\n");
      out.write("\t\t<td>test.hwp</td>\r\n");
      out.write("\t</tr>\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" align=\"center\" style=\"height:40px;\">\r\n");
      out.write("\t\t<a href=\"index.jsp?page=");
      out.print( pageno );
      out.write("&kind=");
      out.print( kind );
      out.write("\">글목록</a>\r\n");
      out.write("\t\t");

		//수정삭제는 데이터베이스에서 받아온 uno랑 로그인 ID의 uno가 같으면 보여준다.
		if(uno.equals(LoginNo))
		{
			
      out.write("\r\n");
      out.write("\t\t\t&nbsp;|&nbsp;\r\n");
      out.write("\t\t\t<a href=\"modify.jsp?page=");
      out.print( pageno );
      out.write("&kind=");
      out.print( kind );
      out.write("&no=");
      out.print( no );
      out.write("\">글수정</a>\r\n");
      out.write("\t\t\t&nbsp;|&nbsp;\r\n");
      out.write("\t\t\t<a href=\"javascript:DoDelete();\">글삭제</a>\r\n");
      out.write("\t\t\t");

		}
		
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("</table>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("<table border=\"1\" style=\"width:100%;\">\r\n");
      out.write("\t");

	if(LoginName != null)
	{
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td width=\"110px\">");
      out.print( LoginName );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<form id=\"reply\" name=\"reply\" method=\"post\" action=\"replyok.jsp\" onsubmit=\"return ReplyCheck();\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"no\" value=\"");
      out.print( no );
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"page\" value=\"");
      out.print( pageno );
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"kind\" value=\"");
      out.print( kind );
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" id=\"rnote\" name=\"rnote\" style=\"width:95%\">\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"110px\" align=\"center\">\r\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"작성완료\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\r\n");
      out.write("\t\t");

	}
	
      out.write('\r');
      out.write('\n');
      out.write('	');

	sql = "";
	sql += "select reno, uno, rnote, date(rwdate) as rwdate, ";
	sql += "(select uname from user where uno = reply.uno) as uname ";
	sql += "from reply ";
	sql += "where bno = " + no;
	sql += " order by reno desc ";
	
	//System.out.println(sql);
	
	result = stmt.executeQuery(sql);
	while(result.next() == true)
	{
		String reno = result.getString("reno");
		String runo = result.getString("uno");
		String rwdate = result.getString("rwdate");
		String rnote = result.getString("rnote");
		String runame = result.getString("uname");
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td width=\"110px\">");
      out.print( runame );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print( rnote );
      out.write("\r\n");
      out.write("\t\t\t");

				if(runo.equals(LoginNo))
				{
					
      out.write("\r\n");
      out.write("\t\t\t\t\t[ <a href=\"javascript:DoDeleteReply(");
      out.print( reno );
      out.write(");\">삭제</a> ]\r\n");
      out.write("\t\t\t\t\t");

				}
			
      out.write("\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td width=\"110px\" align=\"center\">");
      out.print( rwdate );
      out.write("</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");

	}
	
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("</table>\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("\r\n");
      out.write("\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\t\t\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");

stmt.close();
conn.close();

    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}