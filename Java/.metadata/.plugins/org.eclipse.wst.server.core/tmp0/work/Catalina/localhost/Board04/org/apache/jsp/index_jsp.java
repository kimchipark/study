/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-14 02:33:54 UTC
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

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<title>?????? ?????? ????????????</title>\r\n");
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
      out.write("\t\t\t\t\t\t\t\t???????????? ????????????\r\n");
      out.write("\t\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align:right;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t");

								if(loginVO == null )
								{
									//????????? ?????? ??????
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"join.jsp\">????????????</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"login.jsp\">?????????</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

								}else
								{
									//????????? ?????????.
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<b>");
      out.print( loginVO.getName() );
      out.write("</b>?????? ????????? ???????????????.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"logout.jsp\">????????????</a>\r\n");
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
      out.write("\t\t\t\t\t<div class=\"submenu\"><a href=\"index.jsp?kind=J\">?????? ?????? ?????????</a></div>\r\n");
      out.write("\t\t\t\t\t<div style=\"height:2px; background-color:#ffffff;\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"submenu\"><a href=\"index.jsp?kind=H\">HTML?????? ?????????</a></div>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td style=\"width:5px\"></td>\r\n");
      out.write("\t\t\t\t<td>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");


//????????? ?????? ??????
String uploadPath = "D:\\PSJ\\workspace\\Board04\\WebContent\\upload";

DBManager db = new DBManager();
db.DBOpen();

      out.write('\r');
      out.write('\n');

String kind = request.getParameter("kind");
if(kind == null) kind = "J";

String key = request.getParameter("key");
if(key == null) key = "";

String keytype = request.getParameter("keytype");
if(keytype == null ) keytype = "001";

String curpage = request.getParameter("page");
if(curpage == null) curpage = "1";


      out.write("\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
      out.write("<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"height:40px\">\r\n");
      out.write("\t\t\t<span style=\"font-weight:bold; color:red;\">\r\n");
      out.write("\t\t\t");

			if(kind.equals("J"))
			{
				
      out.write("??? ???????????? ?????????");

			}else if(kind.equals("H"))
			{
				
      out.write("??? HTML?????? ?????????");

			}
			
      out.write("\r\n");
      out.write("\t\t\t</span>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"height:25px; text-align:right;\">\r\n");
      out.write("\t\t\t<form name=\"search\" method=\"get\" action=\"index.jsp\" onsubmit=\"return submit();\")\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"kind\" value=\"");
      out.print( kind );
      out.write("\">\r\n");
      out.write("\t\t\t\t<select name=\"keytype\" >\r\n");
      out.write("\t\t\t\t\t<option value=\"001\" ");
      out.print( (keytype.equals("001")) ? "selected" : "" );
      out.write(" >??????</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"002\" ");
      out.print( (keytype.equals("002")) ? "selected" : "" );
      out.write(">??????+??????</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"003\" ");
      out.print( (keytype.equals("003")) ? "selected" : "" );
      out.write(">?????????</option>\r\n");
      out.write("\t\t\t\t</select>\t\t\t\t\r\n");
      out.write("\t\t\t\t<input name=\"key\" type=\"text\" size=\"10\" value=\"");
      out.print( key );
      out.write("\">\r\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"??????\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t");

			if(loginVO != null)
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"write.jsp?kind=");
      out.print( kind );
      out.write("\">?????????</a>\r\n");
      out.write("\t\t\t\t");

			}
			
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\t\t\t\t\t\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>\r\n");
      out.write("\t\t\t<table border=\"0\" style=\"width:100%;\" class=\"list_table\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2; width: 60px;\">??????</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;\">??????</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 120px;\">?????????</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 80px;\">?????????</td>\r\n");
      out.write("\t\t\t\t\t<td style=\"text-align:center; background-color:#f2f2f2;width: 70px;\">?????????</td>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t");
				
				//[3]index.jsp?page=1 ??????
									
				int pageno = 1;
				try
				{
					pageno  = Integer.parseInt(curpage);
				}catch(Exception e){}
				//System.out.println("????????? ??????:" + pageno);
				
				String sql   = "";
				String where = "";
				
				//?????? ?????? ??????
				where = "where bkind = '" + kind + "' ";
				if(!key.equals(""))
				{
					//???????????? ?????????...
					switch(keytype)
					{
					case "001":
						where += " and btitle like '%" + key + "%' "; //????????????
						break;
					case "002":
						where += " and (btitle like '%" + key + "%' or bnote like '%" + key + "%') "; //?????? + ?????? ??????
						break;
					case "003":
						where += " and (select uname from user where uno = board.uno) = '"+ key +"' "; //????????? ??????
						break;
					}
					
				}
				
				//[4]?????? ????????? ?????? ??????
				sql += "select count(bno) as bno ";
				sql += "from board ";
				sql += where;
				db.OpenQuery(sql);
				db.GetNext();
				int total = db.GetInt("bno");
				db.CloseQuery();
				System.out.println("?????? ??????:" + total);				
				
				//[1]????????? ?????? ?????? ??????
				int start   = 0;					
				start = (pageno - 1) * 10;
				
				sql  = "select bno,btitle,date(bwdate) as bwdate,";
				sql += "(select uname from user where uno = board.uno) as uname,";
				sql += "bhit, ";
				sql += "(select count(reno) from reply where bno = board.bno) as reno ";
				sql += "from board ";
				sql += where;
				sql += "order by bno desc ";
				//[2]????????? ?????? ?????? ??????
				sql += "limit " + start + ",10 ";				
				db.OpenQuery(sql);				
				
				int seqno = total - start;
				
				while(db.GetNext())
				{
					String bno    = db.GetValue("bno");
					String btitle = db.GetValue("btitle");
					String bwdate = db.GetValue("bwdate");
					String uname  = db.GetValue("uname");
					String bhit   = db.GetValue("bhit");
					String reno   = db.GetValue("reno");					
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( seqno-- );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"view.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&page=");
      out.print( pageno );
      out.write("&no=");
      out.print( bno );
      out.write("&keytype=");
      out.print( keytype );
      out.write('"');
      out.write('>');
      out.print( btitle );
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t\t\t<span style=\"color:#ff6600\">(");
      out.print( reno );
      out.write(")</span>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( bwdate );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( uname );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td style=\"text-align:center;\">");
      out.print( bhit );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");

				}
				db.CloseQuery();
				
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</table>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td style=\"text-align:center;\">\r\n");
      out.write("\t\t");

		//[5] ?????? ????????? ????????? ????????????.
		int maxpage = total / 10;
		if( total % 10 != 0) maxpage++;
		
		//[6]?????? ?????? ?????? ??????
		int startBlock = (pageno / 10) * 10 + 1;
		if(pageno % 10 == 0)
		{
			startBlock = startBlock - 10;
		}	
		//[7]??? ?????? ?????? ??????
		int endBlock   = startBlock + 10 - 1;
		if(maxpage == 0)
			maxpage = 1;
		if(endBlock >= maxpage)
		{
			endBlock = maxpage;
		}
		
		//System.out.println("????????????:" + maxpage);
		//System.out.println("????????????:" + startBlock);
		//System.out.println("????????????:" + endBlock);
		
		//[10]??????????????? ??????
		if(startBlock > 1)
		{
			
      out.write("\r\n");
      out.write("\t\t\t<a href=\"index.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&keytype=");
      out.print( keytype );
      out.write("&page=");
      out.print( startBlock - 1 );
      out.write("\">?????? ?????????</a>&nbsp;\r\n");
      out.write("\t\t\t");

		}
			
		//[8]????????? ??????
		for(int i=startBlock;i <= endBlock ;i++)
		{
			if(pageno == i)
			{
				//???????????????
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&keytype=");
      out.print( keytype );
      out.write("&page=");
      out.print( i );
      out.write("\"><strong style=\"color:red;\">");
      out.print( i );
      out.write("</strong></a>&nbsp;\r\n");
      out.write("\t\t\t\t");
					
			}else
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&keytype=");
      out.print( keytype );
      out.write("&page=");
      out.print( i );
      out.write('"');
      out.write('>');
      out.print( i );
      out.write("</a>&nbsp;\r\n");
      out.write("\t\t\t\t");

			}
		}	
		
		//[9]??????????????? ??????
		if( endBlock != maxpage)
		{
			
      out.write("\r\n");
      out.write("\t\t\t<a href=\"index.jsp?kind=");
      out.print( kind );
      out.write("&key=");
      out.print( key );
      out.write("&keytype=");
      out.print( keytype );
      out.write("&page=");
      out.print( endBlock + 1 );
      out.write("\">?????? ?????????</a>&nbsp;\r\n");
      out.write("\t\t\t");

		}		
		
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("</table>\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
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
      out.write('\r');
      out.write('\n');
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
