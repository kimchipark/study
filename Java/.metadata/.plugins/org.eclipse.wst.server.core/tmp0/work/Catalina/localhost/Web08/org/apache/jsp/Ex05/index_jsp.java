/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-02 08:26:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Ex05;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ezen.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

DBManager db = new DBManager();
db.DBOpen();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta charset=\"EUC-KR\">\r\n");
      out.write("\t\t<title>도서관리 프로그램</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t<table border=\"0\" style=\"width:800px;\" align=\"center\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"height:40px\">\r\n");
      out.write("\t\t\t\t<span style=\"font-weight:bold; color:red;\">※ 도서관리 프로그램</span>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"height:25px; text-align:right;\">\r\n");
      out.write("\t\t\t\t<a href=\"write.jsp\">도서등록</a>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\t\t\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<table border=\"1\" style=\"width:100%;\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2; width: 60px;\">번호</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;\">도서명</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 80px;\">출판사</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 80px;\">저자</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 70px;\">가격</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 70px;\">등록일</td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");

					int total = 0;
					String sql = "select count(no) as total from book";
					db.OpenQuery(sql);
					db.GetNext();
					total = db.GetInt("total");
					db.CloseQuery();
					
					sql = "";
					sql += "select no, btitle, bpub, bauthor, bprice, bdate from book ";
					sql += "order by no desc ";
					
					String curpage = request.getParameter("page");
					
					int pageno = 1;
					try
					{
						pageno = Integer.parseInt(curpage);
					}
					catch(Exception e)
					{
						
					}
					//System.out.println("페이지 번호:" + pageno);
					
					int start = 0;
					
					start = (pageno - 1) * 10;
					
					sql += "limit "+ start + ", 10";
					
					db.OpenQuery(sql);
					int num = 1;
					while(db.GetNext())
					{
						String no	  = db.GetValue("no");
						String title  = db.GetValue("btitle");
						String pub	  = db.GetValue("bpub");
						String author = db.GetValue("bauthor");
						String price  = db.GetValue("bprice");
						String date   = db.GetValue("bdate");
						
						date = date.substring(0, 10);
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( num++ );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td><a href=\"view.jsp?no=");
      out.print( no );
      out.write('"');
      out.write('>');
      out.print( title );
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( pub );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( author );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( price );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td width=\"100\"style=\"text-align:center;\">");
      out.print( date );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

						
					}
				
					db.CloseQuery();
					
      out.write("\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td height=\"40px\" align=\"center\">전체 게시물 : ");
      out.print( total );
      out.write("</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td height=\"40px\" align=\"center\">\r\n");
      out.write("\t\t\t");

			int maxpage = total / 10;
			if( total % 10 != 0 ) maxpage++;
			
			int startBlock = (pageno / 10) * 10 + 1;
			
			if(pageno % 10 == 0)
			{
				startBlock = ((pageno-1) / 10) * 10 + 1;
			}
			
			int endBlock = startBlock + 10 - 1;
			
			if(endBlock >= maxpage)
			{
				endBlock = maxpage;
			}
			if(startBlock >1)
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp?page=");
      out.print( startBlock - 1 );
      out.write("\">이전 페이지</a>&nbsp;\r\n");
      out.write("\t\t\t\t");

			}
			
			for(int i = startBlock; i <= endBlock ; i++)
			{
				if(pageno == i)
				{
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp?page=");
      out.print( i );
      out.write("\"><strong style=\"color:red\">");
      out.print( i );
      out.write("</strong></a>&nbsp;\r\n");
      out.write("\t\t\t\t\t");

				}
				else
				{
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp?page=");
      out.print( i );
      out.write('"');
      out.write('>');
      out.print( i );
      out.write("</a>&nbsp;\r\n");
      out.write("\t\t\t\t\t");

				}
			}
			if( endBlock != maxpage)
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp?page=");
      out.print( endBlock + 1 );
      out.write("\">다음 페이지</a>&nbsp;\r\n");
      out.write("\t\t\t\t");

			}
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");

db.DBClose();

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