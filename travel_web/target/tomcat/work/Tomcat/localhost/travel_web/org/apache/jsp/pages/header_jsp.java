/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-11-24 14:50:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!-- 页面头部 -->\r\n");
      out.write("<header class=\"main-header\">\r\n");
      out.write("\t<!-- Logo -->\r\n");
      out.write("\t<a href=\"all-admin-index.html\" class=\"logo\"> <!-- mini logo for sidebar mini 50x50 pixels -->\r\n");
      out.write("\t\t<span class=\"logo-mini\"><b>数据</b></span> <!-- logo for regular state and mobile devices -->\r\n");
      out.write("\t\t<span class=\"logo-lg\"><b>数据</b>后台管理</span>\r\n");
      out.write("\t</a>\r\n");
      out.write("\t<!-- Header Navbar: style can be found in header.less -->\r\n");
      out.write("\t<nav class=\"navbar navbar-static-top\">\r\n");
      out.write("\t\t<!-- Sidebar toggle button-->\r\n");
      out.write("\t\t<a href=\"#\" class=\"sidebar-toggle\" data-toggle=\"offcanvas\"\r\n");
      out.write("\t\t\trole=\"button\"> <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"navbar-custom-menu\">\r\n");
      out.write("\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li class=\"dropdown user user-menu\"><a href=\"#\"\r\n");
      out.write("\t\t\t\t\tclass=\"dropdown-toggle\" data-toggle=\"dropdown\"> <img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"${pageContext.request.contextPath}/img/user2-160x160.jpg\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"user-image\" alt=\"User Image\"> <span class=\"hidden-xs\">\r\n");
      out.write("\t\t\t\t\t\t\txxx\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t<!-- User image -->\r\n");
      out.write("\t\t\t\t\t\t<li class=\"user-header\"><img\r\n");
      out.write("\t\t\t\t\t\t\tsrc=\"${pageContext.request.contextPath}/img/user2-160x160.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"img-circle\" alt=\"User Image\"></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<!-- Menu Footer-->\r\n");
      out.write("\t\t\t\t\t\t<li class=\"user-footer\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"pull-left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default btn-flat\">修改密码</a>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"pull-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"${pageContext.request.contextPath}/logout.do\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tclass=\"btn btn-default btn-flat\">注销</a>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</nav>\r\n");
      out.write("</header>\r\n");
      out.write("<!-- 页面头部 /-->");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
