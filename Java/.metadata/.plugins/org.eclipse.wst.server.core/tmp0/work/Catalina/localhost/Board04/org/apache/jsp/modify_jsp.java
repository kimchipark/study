/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-07 02:30:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ezen.*;
import ezen.*;

public final class modify_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/config/dbopen.jsp", Long.valueOf(1662511541753L));
    _jspx_dependants.put("/config/dbclose.jsp", Long.valueOf(1662430990262L));
    _jspx_dependants.put("/include/head.jsp", Long.valueOf(1662441164191L));
    _jspx_dependants.put("/include/tail.jsp", Long.valueOf(1662430990268L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("ezen");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      out.write("    \r\n");

LoginVO loginVO = (LoginVO)session.getAttribute("login");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\t\r\n");
      out.write("\t\t<meta charset=\"EUC-KR\">\r\n");
      out.write("\t\t<title>자바 학습 커뮤니티</title>\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/board.css\"/>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t");

								if(loginVO == null )
								{
									//로그인 안된 경우
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"join.jsp\">회원가입</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"login.jsp\">로그인</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

								}else
								{
									//로그인 되었음.
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<b>");
      out.print( loginVO.getName() );
      out.write("</b>님이 로그인 되었습니다.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

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
      out.write("\r\n");
      out.write("\r\n");


//업로드 경로 설정
String uploadPath = "D:\\PSJ\\workspace\\Board04\\WebContent\\upload";

DBManager db = new DBManager();
db.DBOpen();

      out.write('\r');
      out.write('\n');

//modify.jsp?kind=J&key=&page=1&no=60597 분석
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String key = request.getParameter("key");
if(key == null) key = "";
String curpage = request.getParameter("page");
if(curpage == null) curpage = "1";
String no = request.getParameter("no");
String keytype = request.getParameter("keytype");
if(no == null)
{
	//게시물 번호가 없으면 오류임.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//게시물 정보를 조회한다.
String sql = "";

//게시물 정보를 조회한다.
sql += "select "; 
sql += "uno,btitle,bkind,bnote,bwdate,bhit,";
sql += "(select uname from user where uno = board.uno) as uname ";
sql += "from board ";
sql += "where bno = " + no;
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//해당 게시물이 존재하지 않음.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;	
}
String uno    = db.GetValue("uno");
String btitle = db.GetValue("btitle");
String bkind  = db.GetValue("bkind");
String bnote  = db.GetValue("bnote");
String bwdate = db.GetValue("bwdate");
String bhit   = db.GetValue("bhit");
String uname  = db.GetValue("uname");
db.CloseQuery();

      out.write("\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\twindow.onload = function()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.write.title.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction CheckSubmit()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(document.write.title.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"제목을 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.write.title.focus();\r\n");
      out.write("\t\t\treturn false;\t\t\t\r\n");
      out.write("\t\t}\t\t\r\n");
      out.write("\t\tif(document.write.contents.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"내용을 입력하세요.\");\r\n");
      out.write("\t\t\tdocument.write.contents.focus();\r\n");
      out.write("\t\t\treturn false;\t\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif( confirm(\"변경된 게시물을 저장하시겠습니까?\") != 1)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\treturn false;\t\r\n");
      out.write("\t\t}\t\t\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"height:40px\">\r\n");
      out.write("\t\t\t<span style=\"font-weight:bold; color:red;\">※ 글수정</span>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\t\t\r\n");
      out.write("<form name=\"write\" method=\"post\" action=\"modifyok.jsp\"\r\n");
      out.write("\tenctype=\"multipart/form-data\" onsubmit=\"return CheckSubmit();\">\r\n");
      out.write("<input type=\"hidden\" id=\"kind\" name=\"kind\" value=\"");
      out.print( kind );
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" id=\"key\" name=\"key\" value=\"");
      out.print( key );
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" id=\"page\" name=\"page\" value=\"");
      out.print( curpage );
      out.write("\">\r\n");
      out.write("<input type=\"hidden\" id=\"no\" name=\"no\" value=\"");
      out.print( no );
      out.write("\">\r\n");
      out.write("<table border=\"0\" style=\"width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"width:120px; text-align:center; background-color:#f4f4f4\">제목</td>\r\n");
      out.write("\t\t<td><input type=\"text\" name=\"title\" style=\"width:95%\" value=\"");
      out.print( btitle );
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"width:120px; text-align:center; background-color:#f4f4f4\">구분</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t");

			if(bkind.equals("J"))
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<input type=\"radio\" name=\"subject\" value=\"J\" checked>자바 학습 게시판\r\n");
      out.write("\t\t\t\t<input type=\"radio\" name=\"subject\" value=\"H\">HTML 학습 게시판\r\n");
      out.write("\t\t\t\t");

			}else
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<input type=\"radio\" name=\"subject\" value=\"J\">자바 학습 게시판\r\n");
      out.write("\t\t\t\t<input type=\"radio\" name=\"subject\" value=\"H\" checked>HTML 학습 게시판\r\n");
      out.write("\t\t\t\t");
				
			}
			
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\t\t\t\t\t\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"width:120px; text-align:center; background-color:#f4f4f4\">내용</td>\r\n");
      out.write("\t\t<td><textarea name=\"contents\" style=\"width:95%; height:200px;\">");
      out.print( bnote );
      out.write("</textarea></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"width:120px; text-align:center; background-color:#f4f4f4\">첨부파일</td>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t");

		//해당 게시물의 첨부파일을 조회한다.
		sql  = "select ano,pname,fname ";
		sql += "from attach ";
		sql += "where bno = " + no + " ";
		sql += "order by fname asc ";
		db.OpenQuery(sql);
		while( db.GetNext() == true)
		{
			String ano  = db.GetValue("ano");
			String pname = db.GetValue("pname");
			String fname = db.GetValue("fname");
			
      out.write("\r\n");
      out.write("\t\t\t<a href=\"down.jsp?ano=");
      out.print( ano );
      out.write('"');
      out.write('>');
      out.print( fname );
      out.write("</a><br>\r\n");
      out.write("\t\t\t");

		}
		db.CloseQuery();		
		
      out.write("\t\t\r\n");
      out.write("\t\t<input name=\"attach\" type=\"file\" style=\"width:95%\">\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" style=\"height:1px;background-color:#cccccc\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"text-align:center;\" colspan=\"2\">\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"글수정 완료\">\r\n");
      out.write("\t\t\t<a href=\"view.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&page=");
      out.print( curpage );
      out.write("&no=");
      out.print( no );
      out.write("&keytype=");
      out.print( keytype );
      out.write("\">글수정 취소</a>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\t\t\t\t\t\r\n");
      out.write("</form>\t\t\t\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write('\r');
      out.write('\n');

db.DBClose();

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\t\t\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
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
