package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.entities.message;

public final class Log_005fin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Log_In_Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"css/Mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("            .banner-background{\n");
      out.write("             clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 81%, 84% 98%, 18% 85%, 0 100%, 0% 30%);\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("               <!--navbar-->\n");
      out.write("       \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark primary-background\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"index.jsp\">Digital_Locker</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("    <ul class=\"navbar-nav\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Features</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Contact Us</a>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"sign_up.jsp\">signUp</a>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("        </nav>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               <!--body of login page-->\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               <main class=\"d-flex align-items-center primary-background banner-background\" style=\"height:80vh\">\n");
      out.write("                   \n");
      out.write("                   <div class=\"container\">\n");
      out.write("                       <div class=\"row\">\n");
      out.write("                           <div class=\"col-md-4 offset-md-4\">\n");
      out.write("                               <div class=\"card\">\n");
      out.write("                                   <div class=\"card-header primary-background text-white text-center\">\n");
      out.write("                                       <span class=\"fa fa-user-circle fa-3x\"></span><br>\n");
      out.write("                                       <p>LOGIN Here</p>\n");
      out.write("                                   </div>\n");
      out.write("                                   \n");
      out.write("                                   <!--invalid msg throw-->\n");
      out.write("                                   \n");
      out.write("                                   ");

                                      message m=(message)session.getAttribute("msg");
                                       if(m!=null){
                                           
                                           
      out.write("\n");
      out.write("                                           \n");
      out.write("                                            <div class=\"alert ");
      out.print( m.getCssclass() );
      out.write("\" role=\"alert\">\n");
      out.write("                                               ");
      out.print(m.getMsg() );
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                           \n");
      out.write("                                           ");

                                               
                                               session.removeAttribute("msg");
                                               
                                       }
                                       
                                       
                                       
      out.write("\n");
      out.write("                                       \n");
      out.write("                                   \n");
      out.write("                                   \n");
      out.write("                                   <div class=\"card-body\">\n");
      out.write("                                       <form action=\"login\" method=\"POST\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("                                                <input type=\"email\" name=\"email\" required class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter email\" required=\"required\">\n");
      out.write("                                                <small id=\"emailHelp\" class=\"form-text text-muted\">We'll never share your email with anyone else.</small>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"exampleInputPassword1\">Password</label>\n");
      out.write("                                                <input type=\"password\" name=\"password\" required class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Password\" required=\"required\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-check\">\n");
      out.write("                                                <input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\" required=\"required\">\n");
      out.write("                                                <label class=\"form-check-label\" for=\"exampleCheck1\">I agree terms and conditions</label>\n");
      out.write("                                            </div><br>\n");
      out.write("                                                 <button type=\"submit\" class=\"btn btn primary-background text-white\">Submit</button>\n");
      out.write("                                        </form>\n");
      out.write("                                       \n");
      out.write("                                   </div>\n");
      out.write("                               </div>\n");
      out.write("                           </div>\n");
      out.write("                           \n");
      out.write("                       </div>\n");
      out.write("                       \n");
      out.write("                   </div>\n");
      out.write("               </main>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("        <script\n");
      out.write("         src=\"https://code.jquery.com/jquery-3.5.1.min.js\"\n");
      out.write("         integrity=\"sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=\"\n");
      out.write("         crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("       \n");
      out.write("          \n");
      out.write("               \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
