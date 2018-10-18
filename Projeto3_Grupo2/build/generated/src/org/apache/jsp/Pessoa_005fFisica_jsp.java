package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.web.Db_pf;
import br.com.fatecpg.web.PessoaFisica;

public final class Pessoa_005fFisica_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/WEB-INF/jspf/header.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/navbar.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/footer.jspf");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Pessoa Fisica</title>\n");
      out.write("        <!--Cabeçalho-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Optional theme -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Latest compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"Css/style.css\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(max-width: 640px)\" href=\"max-640px.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(min-width: 640px)\" href=\"min-640px.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(orientation: portrait)\" href=\"portrait.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(orientation: landscape)\" href=\"landscape.css\">");
      out.write("\n");
      out.write("        <!--Navbar-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("   <nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span> \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">WebSiteName</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"Pessoa_Fisica.jsp\">Pessoa Fisica</a></li>\n");
      out.write("        <li><a href=\"Pessoa_Juridica.jsp\">Pessoa Juridica</a></li> \n");
      out.write("        <li><a href=\"Veiculo.jsp\">Manutenção de Veiculos</a></li> \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body id=\"bd\">\n");
      out.write("        <!--Jumbotron-->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"jumbotron text-center\">\n");
      out.write("                <div id=\"Text1\"> Manutenção de Pessoa Fisica</div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--Tabela-->\n");
      out.write("        <div id=\"TabPF\" class=\"container-fluid\">\n");
      out.write("            <div class=\"jumbotron text-center\"\n");
      out.write("                 \n");
      out.write("\n");
      out.write("                <div class=\"row text-center\">\n");
      out.write("                    <h2>Listagem</h2>\n");
      out.write("                    \n");
      out.write("                    <table class=\"table table-striped\" border=\"1\">\n");
      out.write("                       \n");
      out.write("                    <tr>\n");
      out.write("                        <th>Nome</th>\n");
      out.write("                        <th>CPF</th>\n");
      out.write("                        <th>Email</th>\n");
      out.write("                        <th>Telefone</th>\n");
      out.write("                        <th>Comandos</th>\n");
      out.write("                            ");
for (PessoaFisica c : Db_pf.getPessoaFisicas()) {
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    ");
for (PessoaFisica npf : Db_pf.getPessoaFisicas()) {
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( npf.getNome());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( npf.getCpf());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( npf.getEmail());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( npf.getTel_pf());
      out.write("</td>\n");
      out.write("                        ");
 int i = Db_pf.getPessoaFisicas().indexOf(npf);
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"alter_pf.jsp?i=");
      out.print( i);
      out.write("\"><button id=\"botao\">Alterar</button></a>\n");
      out.write("                            <a href=\"remove_pf.jsp?i=");
      out.print( i);
      out.write("\"><button id=\"botao\">Remover</button></a>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </table>\n");
      out.write("                \n");
      out.write("                <!--<div id=\"Row1\" class=\"row text-center\">\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                <a href=\"new_pf.jsp\"><button>Nova Pessoa Fisica</button></a><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 \">\n");
      out.write("                <a href=\"home.jsp\"><button>Voltar</button></a>\n");
      out.write("            </div>\n");
      out.write("            </div>-->\n");
      out.write("                \n");
      out.write("                <div>\n");
      out.write("                    <div>\n");
      out.write("                        <a id=\"btn1\"class=\"button floatLeft\" href=\"new_pf.jsp\">Novo Cadastro</a></div><br\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("\n");
      out.write("       <!--Rodapé-->   \n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container-fluid\" style=\"max-height: 200px; \">\n");
      out.write("<footer class=\"footer-css\">\n");
      out.write("    <p class=\"fonte\">Desenvolvido em Outubro/2018</p>\n");
      out.write("</footer>\n");
      out.write("</div>");
      out.write("\n");
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
