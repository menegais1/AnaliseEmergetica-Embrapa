package org.apache.jsp.analisefinanceira_002dlv2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Lv2Resultado;
import dao.UsuarioDAO;
import modelo.Usuario;
import modelo.Propriedade;
import dao.PropriedadeDAO;
import dao.Passos;

public final class lv2resultados_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(7);
    _jspx_dependants.add("/analisefinanceira-lv2/../jsp/testelogin.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../jsp/testepropriedade.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../jsp/testeano.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../jsp/testepassos.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../importacoes/cabecalho.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../importacoes/subcabecalholv2.jsp");
    _jspx_dependants.add("/analisefinanceira-lv2/../importacoes/navegacaolv2.jsp");
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

    request.setCharacterEncoding("UTF-8");
    if (session.getAttribute("Usuario") == null) {
        response.sendRedirect("../index.jsp");
        return;
    }


      out.write('\n');

if(session.getAttribute("Propriedade_id") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');

if(session.getAttribute("Ano") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');

if(session.getAttribute("Passos") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');
      out.write('\n');
    session.setAttribute("Link", 5);

    Passos passos = (Passos) session.getAttribute("Passos");

    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Lv2Resultado lv2resultado = passos.getLv2resultadodao().buscarPorPropriedade(id, ano);

    if (lv2resultado == null) {
        lv2resultado = new Lv2Resultado(id, ano);

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria1());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectar1());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao1());
        lv2resultado.setCustoterneiro(passos.custoTerneiro1());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia2());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria1());
        lv2resultado.setReceitahectar2(passos.receitahectar2());
        lv2resultado.setTotalreceita(passos.totalReceita());

        passos.getLv2resultadodao().inserir(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passos", passos);
    } else if (lv2resultado != null) {

        lv2resultado.setAreamedia(passos.areaMedia());
        lv2resultado.setAreaaproveitavel(passos.areaAproveitavel());
        lv2resultado.setCustoatividadecria1(passos.custoAtividadeDeCria1());
        lv2resultado.setCustoproducaohectar1(passos.custoProducaoHectar1());
        lv2resultado.setCustotalproducao(passos.totalCustoProducao1());
        lv2resultado.setCustoterneiro(passos.custoTerneiro1());
        lv2resultado.setLotacaomedia2(passos.lotacaoMedia2());
        lv2resultado.setPercentualrebanhocomcria(passos.percentualRebanhoComCria1());
        lv2resultado.setReceitahectar2(passos.receitahectar2());
        lv2resultado.setTotalreceita(passos.totalReceita());

        passos.getLv2resultadodao().atualizar(lv2resultado);
        passos.setLv2resultado(lv2resultado);
        session.setAttribute("Passos", passos);
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


Usuario entroucomo= (Usuario) session.getAttribute("Usuario");

      out.write("\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta name=\"description\" content=\"\">\n");
      out.write("<meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("<title>S.I.S.A.F.E</title>\n");
      out.write("\n");
      out.write("<!-- Bootstrap Core CSS -->\n");
      out.write("<link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<!-- Custom CSS -->\n");
      out.write("<link href=\"../css/landing-page.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<!-- Custom Fonts -->\n");
      out.write("<link href=\"../font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/customizacao.css\">\n");
      out.write("\n");
      out.write("<!-- jQuery -->\n");
      out.write("<script src=\"../js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Bootstrap Core JavaScript -->\n");
      out.write("<script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top topnav\" role=\"navigation\">\n");
      out.write("        <div class=\"container topnav\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand topnav\" href=\"#\">S.I.S.A.F.E</a>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a>Entrou como: ");
      out.print(entroucomo.getLogin());
      out.write("</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"btn btn-success\" id=\"sair\" href=\"../propriedades/propriedades.jsp\">Propriedades</a>\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"btn btn-danger\" id=\"sair\" href=\"../index.jsp\">Sair <span class=\"glyphicon glyphicon-log-out\"></span></a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>");
      out.write("\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');


    Propriedade p = new Propriedade();

    PropriedadeDAO dao = new PropriedadeDAO();
    p = dao.buscar(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));



      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container conteudo\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("            <h1 class=\"text-center\">Análise Financeira</h1>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-4  well well-sm text-center nivel2\">\n");
      out.write("            <h4>Propriedade: ");
      out.print(p.getNome());
      out.write("</h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4 well well-sm text-center nivel2\">\n");
      out.write("            <h4>Ano: ");
      out.print(session.getAttribute("Ano").toString());
      out.write("</h4>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-md-4 well well-sm text-center nivel2\">\n");
      out.write("            <h4>Nivel: 2</h4>\n");
      out.write("        </div>\n");
      out.write("    </div>");
      out.write("\n");
      out.write("\n");
      out.write("    <hr>\n");
      out.write("    ");
      out.write('\n');


    String p2 = "", p3 = "", p4 = "", resul = "", p1a = "", p2a = "", p3a = "", p4a = "", resula = "";
    Integer porcento = 20;

    Passos passo = (Passos) session.getAttribute("Passos");

    if (session.getAttribute("Link") != null) {
        Integer link = Integer.parseInt(session.getAttribute("Link").toString());
        switch (link) {
            case 1: {
                p1a = "active";
                break;
            }
            case 2: {
                p2a = "active";
                break;
            }
            case 3: {
                p3a = "active";
                break;
            }
            case 4: {
                p4a = "active";
                break;
            }
            case 5: {
                resula = "active";
                break;
            }
        }
    }

    if (passo.getLv2p2() == null) {
        p2 = "disabled";
    } else {
        porcento = 40;
    }
    if (passo.getLv2p3() == null) {
        p3 = "disabled";
    } else {
        porcento = 60;
    }
    if (passo.getLv2p4() == null) {
        p4 = "disabled";
    } else {
        porcento = 80;
    }
    if (passo.getLv2resultado() == null) {
        resul = "disabled";
    } else {
        porcento = 100;
    }



      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("\n");
      out.write("    <div class=\"navegacao\">\n");
      out.write("        <a  href=\"lv2p1.jsp\">\n");
      out.write("            <div class=\"col-md-2 col-md-offset-1 text-center ");
      out.print(p1a);
      out.write("\">\n");
      out.write("\n");
      out.write("                <span class=\"glyphicon glyphicon-home\"></span><br>\n");
      out.write("                <span>Passo 1</span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"navegacao\">\n");
      out.write("        <!--CLASS=\"DISABLED\"-->\n");
      out.write("        <a  class=\"");
      out.print(p2);
      out.write("\" href=\"lv2p2.jsp\">\n");
      out.write("            <div class=\"col-md-2 text-center ");
      out.print(p2a);
      out.write("\">\n");
      out.write("\n");
      out.write("                <span class=\"glyphicon glyphicon-grain\"></span><br>\n");
      out.write("                <span>Passo 2</span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"navegacao\">\n");
      out.write("        <a class=\"");
      out.print(p3);
      out.write("\" href=\"lv2p3.jsp\">\n");
      out.write("            <div class=\"col-md-2  text-center ");
      out.print(p3a);
      out.write("\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <span class=\"glyphicon glyphicon-briefcase\"></span><br>\n");
      out.write("                <span>Passo 3</span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"navegacao\">\n");
      out.write("        <a class=\"");
      out.print(p4);
      out.write("\" href=\"lv2p4.jsp\">\n");
      out.write("            <div class=\"col-md-2  text-center ");
      out.print(p4a);
      out.write("\">\n");
      out.write("\n");
      out.write("                <span class=\"glyphicon glyphicon-euro\"></span><br>\n");
      out.write("                <span>Passo 4</span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"navegacao\">\n");
      out.write("        <a class=\"");
      out.print(resul);
      out.write("\" href=\"lv2resultados.jsp\">\n");
      out.write("            <div class=\"col-md-2 text-center ");
      out.print(resula);
      out.write(" \">\n");
      out.write("\n");
      out.write("                <span class=\"glyphicon glyphicon-barcode\"></span><br>\n");
      out.write("                <span>Resultados</span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-md-12\">\n");
      out.write("        <div class=\"progress\">\n");
      out.write("            <div class=\"progress-bar progress-bar-success\" style=\"width: ");
      out.print(porcento);
      out.write("%;\">\n");
      out.write("                <span>");
      out.print(porcento);
      out.write("% Completo</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<hr>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class='row'>\n");
      out.write("        <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Área Média da Propriedade: ");
      out.print(passos.areaMedia());
      out.write(" Hectares\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Área Aproveitável da Propriedade:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Percentual do Rebanho com Cria:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Lotação Média da Propriedade:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Total Receita da Propriedade:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Receita por Hectare:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Custo Total de Produção:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Custo Atividade de Cria:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Custo de Produção por Hectare:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"well well-sm\">\n");
      out.write("                Custo por Terneiro:\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <hr>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("            <a href=\"../analisefinanceira/nivel-data.jsp\" class=\"btn btn-primary btn-block\">Fazer outra análise</a>\n");
      out.write("            <a href=\"lv2comparacao.jsp\" class=\"btn btn-primary btn-block\">Comparar resultados com outros produtores</a>\n");
      out.write("            <a href=\"../propriedades/propriedades.jsp\" class=\"btn btn-primary btn-block\">Voltar a tela de seleção de propriedade</a><br>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"conteudo\">\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
