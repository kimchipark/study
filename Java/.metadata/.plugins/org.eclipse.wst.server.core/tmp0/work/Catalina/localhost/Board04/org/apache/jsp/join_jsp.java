/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-06 07:33:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ezen.*;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
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
      out.write("\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
      out.write("<script>\r\n");
      out.write("\t//????????? ????????????\r\n");
      out.write("\tvar IsUseID = false; \r\n");
      out.write("\t\r\n");
      out.write("\twindow.onload = function()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.join.id.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\t//???????????? ????????? ????????? IsUseID??? false??? ??????\r\n");
      out.write("\tfunction ResetID()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tIsUseID = false;\r\n");
      out.write("\t\tspanMsg.innerHTML = \"????????? ??????????????? ???????????????.\";\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t//????????? ???????????? ??????\r\n");
      out.write("\tfunction CheckID()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tvar userid = document.join.id.value;\r\n");
      out.write("\t\tif(userid == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"???????????? ???????????????.\");\r\n");
      out.write("\t\t\tdocument.join.id.focus();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t//???????????? ???????????? ??????????????? ????????? ?????? ????????? ????????????.\r\n");
      out.write("\t\twindow.open(\"idcheck.jsp?id=\" + userid,\"_idcheck\",\r\n");
      out.write("\t\t\"width=400,height=400\");\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t//??????????????????\r\n");
      out.write("\tfunction DoSubmit()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(document.join.id.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"???????????? ???????????????.\");\r\n");
      out.write("\t\t\tdocument.join.id.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(IsUseID == false)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"????????? ??????????????? ???????????????.\");\r\n");
      out.write("\t\t\treturn false;\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(document.join.pw.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"??????????????? ???????????????.\");\r\n");
      out.write("\t\t\tdocument.join.pw.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif(document.join.name.value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"????????? ???????????????.\");\r\n");
      out.write("\t\t\tdocument.join.name.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tpw = document.join.pw.value;\r\n");
      out.write("\t\tpwcheck = document.join.pwcheck.value;\r\n");
      out.write("\t\tif( pw != pwcheck )\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\talert(\"??????????????? ???????????? ????????????.\");\r\n");
      out.write("\t\t\tdocument.join.pwcheck.value = \"\";\r\n");
      out.write("\t\t\tdocument.join.pwcheck.focus();\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif( confirm(\"??????????????? ?????????????????????????\") != 1)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\treturn false;\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn true;\t\r\n");
      out.write("\t}\t\r\n");
      out.write("</script>\r\n");
      out.write("<form name=\"join\" method=\"post\" action=\"joinok.jsp\"\r\n");
      out.write("\tonsubmit=\"return DoSubmit();\">\r\n");
      out.write("\t<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"height:40px\">\r\n");
      out.write("\t\t\t\t<span style=\"font-weight:bold; color:red;\">??? ????????????</span>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t</table>\r\n");
      out.write("\t<table border=\"1\" style=\"width:100%;\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td style=\"width:130px;\">????????? (*)</td>\r\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"id\" size=\"20\" onkeypress=\"ResetID();\">\r\n");
      out.write("\t\t\t<input type=\"button\" value=\"????????? ????????????\" onclick=\"CheckID();\">\r\n");
      out.write("\t\t\t<span id=\"spanMsg\" name=\"spanMsg\">????????? ??????????????? ???????????????.</span>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>???????????? (*)</td>\r\n");
      out.write("\t\t\t<td><input type=\"password\" name=\"pw\"  style=\"width:95%\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>???????????? ?????? (*)</td>\r\n");
      out.write("\t\t\t<td><input type=\"password\" name=\"pwcheck\" style=\"width:95%\"></td>\r\n");
      out.write("\t\t</tr>\t\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>?????? (*)</td>\r\n");
      out.write("\t\t\t<td><input type=\"text\" name=\"name\"  style=\"width:95%\"></td>\r\n");
      out.write("\t\t</tr>\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>?????? (*)</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<input type=\"radio\" value=\"M\" name=\"gender\" checked>??????\r\n");
      out.write("\t\t\t\t<input type=\"radio\" value=\"F\" name=\"gender\">??????\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>?????? (*)</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<select name=\"hobby\" >\r\n");
      out.write("\t\t\t\t\t<option value=\"001\" selected>??????</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"002\">??????</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"003\">??????</option>\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>????????????</td>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t\t<input type=\"checkbox\" value=\"001:???\" name=\"interest\"  checked>???\r\n");
      out.write("\t\t\t\t<input type=\"checkbox\" value=\"002:??????\" name=\"interest\">??????\r\n");
      out.write("\t\t\t\t<input type=\"checkbox\" value=\"003:?????????\" name=\"interest\">?????????\r\n");
      out.write("\t\t\t\t<input type=\"checkbox\" value=\"004:??????\" name=\"interest\">??????\t\t\t\t\t\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"2\" style=\"text-align:center;\">\r\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"????????????\">\r\n");
      out.write("\t\t\t\t<input type=\"button\" value=\"??????\">\r\n");
      out.write("\t\t\t</td>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t</tr>\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t</table>\r\n");
      out.write("</form>\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
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
