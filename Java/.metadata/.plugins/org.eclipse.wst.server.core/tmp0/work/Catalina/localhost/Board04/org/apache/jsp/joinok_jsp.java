/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.51
 * Generated at: 2022-09-06 07:33:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ezen.*;

public final class joinok_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/config/dbopen.jsp", Long.valueOf(1662430990263L));
    _jspx_dependants.put("/config/dbclose.jsp", Long.valueOf(1662430990262L));
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
      out.write("\r\n");

DBManager db = new DBManager();
db.DBOpen();

      out.write("\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");

//한글 데이터를 변환한다.
request.setCharacterEncoding("euc-kr");

//join.jsp에서 넘어온 변수를 얻는다.
String uid     = request.getParameter("id");
String upw     = request.getParameter("pw");
String uname   = request.getParameter("name");
String ugender = request.getParameter("gender");
String uhobby  = request.getParameter("hobby");
String ukind[] = request.getParameterValues("interest");
if(uid == null || upw == null || uname == null)
{
	db.DBClose();	
	response.sendRedirect("index.jsp");
	return;
}

//동일한 아이디로 회원 등록이 되어 있는지 검사한다.
String sql = "";

sql  = "select uid ";
sql += "from user ";
sql += "where uid = '" + uid + "'";
db.OpenQuery(sql);
if(db.GetNext() == true)
{
	//중복된 아이디가 있음.
	
      out.write("\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\r\n");
      out.write("\t\talert(\"중복된 회원아이디 입니다.\");\t\t\r\n");
      out.write("\t\tdocument.location = \"join.jsp\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t</script>\t\r\n");
      out.write("\t");
	
	db.DBClose();
	return;
}

sql  = "insert into user ";
sql += "(uid,upw,uname,ugender,uhobby) ";
sql += "values ('" + db._R(uid) + "',";
sql += "md5('" + db._R(upw) + "'),";
sql += "'" + db._R(uname) + "',";
sql += "'" + ugender + "',";
sql += "'" + uhobby + "') ";
db.RunSQL(sql);

//등록된 아이디의 번호를 얻는다.
sql = "select last_insert_id() as no ";
db.OpenQuery(sql);
db.GetNext();
String uno = db.GetValue("no");
db.CloseQuery();

//관심분야 등록
String fname = "";
if(ukind != null)
{
	for(String fkind : ukind)
	{
		String ary[] = fkind.split(":");
		sql = "insert into fav (uno,fkind,fname) ";	
		sql += "values (" + uno + ",";
		sql += "'" + ary[0] + "',";
		sql += "'" + ary[1] + "')";
		db.RunSQL(sql);
	}
}

      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\talert(\"회원가입이 완료되었습니다.\");\r\n");
      out.write("\t\r\n");
      out.write("\tdocument.location = \"login.jsp\";\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write('\r');
      out.write('\n');

db.DBClose();

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
